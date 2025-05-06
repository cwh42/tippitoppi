require 'csv'

namespace :import do
  desc "Import worktime CSV as exported from Shiftbase"
  task :worktimes, %i[csv_file] => :environment do |_t, args|
    CSV.read(args.csv_file, headers: true).each do |row|
      record =  { name: row['Name'],
                  start_time: Time.new(row['Datum'] + ' ' + row['Startzeit']),
                  end_time: Time.new(row['Datum'] + ' ' + row['Endzeit']),
                  pause: row['Pause'] }

      record[:end_time] += 1.day if record[:end_time] < record[:start_time]

      wt = Worktime.create(record)
      puts wt
    end
  end
end
