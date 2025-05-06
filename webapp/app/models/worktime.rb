class Worktime < ApplicationRecord
  validates :name, :uniqueness => { :scope => [:start_time, :end_time] }

  scope :at_time, ->(time) { where('? BETWEEN start_time AND end_time', time) }
end
