namespace :export do
  def f_curr(num)
    num.nil? ? '-' : number_to_currency(num, locale: :de)
  end

  def mktable(date)
    include ActionView::Helpers

    transactions = Transaction.at_date(date)
    workers = Worktime.at_date(date)

    worker_shortnames = workers.names.map { |n| truncate(n, length: 6, omission: '…') }
    table_headings = %w[Zeit Trinkgeld %] + worker_shortnames
    table_opts = { title: I18n.l(date, format: :long),
                   headings: table_headings,
                   style: { alignment: :right } }

    table = Terminal::Table.new(table_opts) do |t|
      transactions.group_by { |tx| tx.timestamp.localtime.hour }.each do |g, txs|
        txs.each do |tx|
          share = tx.share.fetch_values(*workers.names) { |t| nil }.map { |v| f_curr(v) }
          t <<  [tx.timestamp.localtime.to_fs(:time),
                 number_to_currency(tx.tip_amount, locale: :de),
                 number_to_percentage(tx.tip_percent, precision: 0)] + share
        end

        row = Array.new(table_headings.size)
        row[1] = number_to_currency(txs.sum { |t| t.tip_amount }, locale: :de)
        t << row
        t << :separator
      end

      row = Array.new(table_headings.size)
      row[1..2] = [number_to_currency(transactions.sum { |t| t.tip_amount }, locale: :de),
                   number_to_percentage(transactions.tip_percent, precision: 0)]
      row[3..] = transactions.share.fetch_values(*workers.names) { |t| nil }.map { |v| f_curr(v) }
      t << row
    end
  end

  desc 'print to STDOUT'
  task :print, %i[date] => :environment do |_t, args|
    args.with_defaults(date: Date.today)

    dates = args.date == 'all' ? Date.new(2024, 12, 10)..Date.today : [args.date&.to_date]
    dates.each do |d|
      puts mktable(d)
    end
  end

  desc 'Export to text'
  task :text, %i[date] => :environment do |_t, args|
    args.with_defaults(date: Date.today)

    dates = args.date == 'all' ? Date.new(2024, 12, 10)..Date.today : [args.date&.to_date]
    dates.each do |d|
      filename = Rails.configuration.export_dir.join("#{d}.txt")
      puts "Writing #{filename}"
      File.write(filename, mktable(d))
    end

    puts "Now run"
    puts "  libreoffice --convert-to pdf --outdir pdf *.txt"
    puts "and"
    puts "  pdfunite *.pdf ../Trinkgeldverteilung-2024-12-10-2025-05-06.pdf"
    puts "to convert to PDF."
  end

  desc 'aggregate date range'
  task :aggregate, %i[from to] => :environment do |_t, args|
    args.with_defaults(from: Date.today.beginning_of_week, to: Date.today)

    include ActionView::Helpers
    #args.date == 'all' ?
    from = args.from&.to_date
    to = args.to&.to_date
    date_range = (from..to)

    table_headings = %w[Name Trinkgeld]
    table_opts = { title: "#{I18n.l(from, format: :long)} – #{I18n.l(to, format: :long)}",
                   headings: table_headings,
                   style: { alignment: :right } }

    table = Terminal::Table.new(table_opts) do |t|
      shared = Transaction.where(timestamp: date_range).share
      shared.each_pair do |n,a|
         t << [n, number_to_currency(a, locale: :de)]
      end

      t << :separator
      t << ['Summe:', number_to_currency(shared.sum {|k,v| v}, locale: :de)]
    end

    puts table
  end
end
