class Transaction < ApplicationRecord
  validates :upstream_id, uniqueness: true
  validates :upstream_id, :amount, :tip_amount, :timestamp, presence: true

  scope :at_date, ->(date) { where(timestamp: date&.to_date.beginning_of_workday..date&.to_date.end_of_workday) }
  scope :yesterday, -> { at_date(Time.zone.yesterday) }
  scope :today, -> { at_date(Time.zone.today) }

  def workers
    Worktime.at_time(timestamp)
  end

  def share
    tip = tip_amount / workers.size
    workers.to_h {|w| [w.name, tip] }
  end

  def self.share
    all.each_with_object(Hash.new(0)) do |t, hash|
      t.share.each_with_object(hash) do |(k, v), hash|
        hash[k] += v
      end
    end
  end

  def tip_percent
    return 0 if amount.zero?
    tip_amount/(amount - tip_amount) * 100
  end

  def self.tip_percent
    amount = sum { |t| t.amount }
    return 0 if amount.zero?
    tip_amount = sum { |t| t.tip_amount }
    tip_amount/(amount - tip_amount) * 100
  end

  def self.sync(date = Time.zone.today)
    syncer = TransactionSyncService.new
    syncer.sync(date: date)
  end
end
