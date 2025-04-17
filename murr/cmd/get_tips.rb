require 'yaml'
require 'optionparser'
require 'openapi_client'

require 'debug'

module Murr
  module Cmd
    class GetTips
      attr_accessor :options

      def initialize
        @options = read_config
        OpenapiClient.configure do |config|
          config.access_token = options[:access_token]
          config.params_encoding = :rack

          config.client_side_validation = false
        end
      end

      def parse_args(argv)
        OptionParser.new do |opts|
          opts.banner = "Usage: #{File.basename($0)} [options]"

          opts.on("-h", "--help", "Prints this help") do
            options[:early_exit] = true
            puts opts
          end

          opts.on("-m", "--merchant CODE", "Merchant code") do |merchant|
            options[:merchant_code] = merchant
          end

          opts.on("-d", "--debug", "Debug mode") do
            options[:debug] = true

            OpenapiClient.configure do |config|
              config.debugging = options[:debug]
            end
          end

          if options[:merchant_code].nil? || options[:merchant_code].empty?
            options[:early_exit] = true
            puts opts
          end
        end.parse!(argv)

        options
      end

      def call(argv)
        options = parse_args(argv)

        return options[:early_exit] if options[:early_exit]

        tips = transaction_list.map do |tx|
          tx = transaction(tx.id)
          [tx.timestamp.getlocal, tx.tip_amount, tip_percent(tx), tx.currency]
        end.group_by { |a| a[0].hour }

        sum = 0

        tips.each do |h,a|
          a.each do |t|
            sum += t[1]
            puts "%s: %6.2f #{t[3]} %2.0f %%" % t
          end
          puts '%33.2f EUR' % a.sum { |t| t[1] }
          puts '-' * 41
        end

        puts '%33.2f EUR' % sum

        0
      rescue OpenapiClient::ApiError => e
        puts e.message
        1
      end

      private

      def read_config
        config_file = File.expand_path("~/.config/#{File.basename($0)}rc")
        File.file?(config_file) ? YAML.safe_load_file(config_file, symbolize_names: true, fallback: {}) : {}
      end

      def api_instance
        @api_instance ||= OpenapiClient::TransactionsApi.new
      end

      def transaction_list
        opts = {
          oldest_time: oldest_time.iso8601,
          newest_time: newest_time.iso8601,
          statuses: ['SUCCESSFUL']
          }

        api_instance.list_transactions_v2_1(options[:merchant_code], opts).items
      end

      def transaction(id)
        api_instance.get_transaction_v2_1(options[:merchant_code], { id: id })
      end

      def oldest_time
        newest_time - (60 * 60 * 24)
      end
     
      def tip_percent(tx)
        tx.tip_amount/(tx.amount - tx.tip_amount) * 100
      end

      def newest_time
        Time.now
      end
    end
  end
end
