namespace :export do
    def short_format_output(date)
      out = []
      table_with = 21

      out <<  I18n.l(date, format: :long)
      out <<  '-' * table_with

      transactions = Transaction.at_date(date)
      transactions.group_by { |tx| tx.timestamp.localtime.hour }.each do |g, txs|
        txs.each do |tx|
          out <<  "%s: %6.2f € %2.0f %%" % [tx.timestamp.localtime.to_fs(:time), tx.tip_amount, tx.tip_percent]
        end
        out <<  '%13.2f €' % txs.sum { |t| t.tip_amount }
        out <<  '-' * table_with
      end

      out <<  '%13.2f € %2.0f %%' % [transactions.sum { |t| t.tip_amount }, transactions.tip_percent]
    end

    def format_output(date)
      out = []
      transactions = Transaction.at_date(date)
      workers = Worktime.at_date(date)

      out <<  I18n.l(date, format: :long) + '     | ' + workers.names.map {|n| n[0..5]+' '}.join(' ')

      table_with = out.first.size
      out <<  '-' * table_with

      transactions.group_by { |tx| tx.timestamp.localtime.hour }.each do |g, txs|
        txs.each do |tx|
          share = tx.share.fetch_values(*workers.names) { |t| nil }.map { |v| v.nil? ? '   -   ' : "%5.2f €" % v }.join(' ')
          out <<  "%s: %6.2f € %2.0f %% | %s" % [tx.timestamp.localtime.to_fs(:time), tx.tip_amount, tx.tip_percent, share]
        end
        out <<  '%13.2f €      |' % txs.sum { |t| t.tip_amount }
        out <<  '-' * table_with
      end

      share = transactions.share.fetch_values(*workers.names) { |t| nil }.map { |v| v.nil? ? '   -   ' : "%5.2f €" % v }.join(' ')
      out <<  '%13.2f € %2.0f %% | %s' % [transactions.sum { |t| t.tip_amount }, transactions.tip_percent, share]
    end

  desc 'print to STDOUT'
  task :print, %i[date] => :environment do |_t, args|
    args.with_defaults(date: Date.today)

    dates = args.date == 'all' ? Date.new(2024, 12, 10)..Date.today : [args.date&.to_date]
    dates.each do |d|
      puts format_output(d)
    end
  end

  desc 'Export to text'
  task :text, %i[date] => :environment do |_t, args|
    args.with_defaults(date: Date.today)

    dates = args.date == 'all' ? Date.new(2024, 12, 10)..Date.today : [args.date&.to_date]
    dates.each do |d|
      filename = Rails.configuration.export_dir.join("#{d}.txt")
      puts "Writing #{filename}"
      File.write(filename, format_output(d).join("\n"))
    end
  end
end
