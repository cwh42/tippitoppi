class Transaction < ApplicationRecord
  validates :upstream_id, uniqueness: true
  validates :upstream_id, :amount, :tip_amount, :timestamp, presence: true

  scope :date, ->(date) { where(timestamp: date&.to_date.beginning_of_workday..date&.to_date.end_of_workday) }
  scope :today, -> { date(Time.zone.today) }

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
