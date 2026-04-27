require "csv"

namespace :import do
  desc "Import worktime CSV as exported from Shiftbase"
  task :worktimes, %i[csv_file] => :environment do |_t, args|
    CSV.read(args.csv_file, headers: :first_row).each do |row|
      record =  { name: row[0], # row['Name'],
                  start_time: Time.new(row["Datum"] + " " + row["Startzeit"]),
                  end_time: Time.new(row["Datum"] + " " + row["Endzeit"]),
                  pause: row["Unbezahlte Pause"] }

      record[:end_time] += 1.day if record[:end_time] < record[:start_time]
      wt = Worktime.create(record)
      puts wt
    end
  end

  desc "Sync SumUp Transactions"
  task :sumup, %i[from to] => :environment do |_t, args|
    args.with_defaults(from: Transaction.last.timestamp.to_date, to: Time.zone.now)

    from = args.from&.to_date
    to = args.to&.to_date

    range = (from..to)
    puts "Syncing transactions for #{range}"
    range.each do |d|
      puts "#{d}: #{Transaction.sync(d).size}"
    end
  end
end
