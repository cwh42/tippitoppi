namespace :export do
  desc 'Export to text'
  task :text, %i[date] => :environment do |_t, args|
    args.with_defaults(date: Date.today)

    def print_date(date)
      out = []

      out <<  I18n.l(date, format: :long)
      out <<  '-' * 21

      transactions = Transaction.date(date)
      transactions.group_by { |tx| tx.timestamp.localtime.hour }.each do |g, txs|
        txs.each do |tx|
          out <<  "%s: %6.2f € %2.0f %%" % [tx.timestamp.localtime.to_fs(:time), tx.tip_amount, tx.tip_percent]
        end
        out <<  '%13.2f €' % txs.sum { |t| t.tip_amount }
        out <<  '-' * 21
      end

      out <<  '%13.2f € %2.0f %%' % [transactions.sum { |t| t.tip_amount }, transactions.tip_percent]
    end

    dates = args.date == 'all' ? Date.new(2024, 12, 10)..Date.today : [args.date&.to_date]
    dates.each do |d|
      filename = Rails.configuration.export_dir.join("#{d}.txt")
      puts "Writing #{filename}"
      File.write(filename, print_date(d).join("\n"))
    end
  end
end
