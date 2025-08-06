class Worktime < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: [ :start_time, :end_time ] }
  validate :end_time_later_than_start_time

  scope :at_time, ->(time) { where("? BETWEEN start_time AND end_time", time) }
  scope :at_date, ->(date) { where("date(start_time) = ?", date&.to_date) }
  scope :yesterday, -> { at_date(Time.zone.yesterday) }
  scope :today, -> { at_date(Time.zone.today) }

  def self.names
    all.order(:start_time).pluck(:name).uniq
  end

  def self.name_size
    names.compact.max_by { |n| n.size }.size
  end

  def end_time_later_than_start_time
    unless end_time > start_time
      errors.add(:end_time, "#{name} forgot to clock out")
    end
  end

  def to_s
    name_size = Worktime.name_size
    pause_str = pause.zero? ? "-" : "-(P: #{(pause / 60.0).round(2)} h)-"
    "%#{name_size}s: %s %s %s ≙ %.2f h" % [ name, I18n.l(start_time), pause_str, I18n.l(end_time), hours ]
  end

  def hours
    dist_in_seconds =  end_time - start_time
    dist_in_minutes = dist_in_seconds / 60.0
    dist_in_hours = (dist_in_minutes - pause) / 60.0

    dist_in_hours.round(2)
  end
end
