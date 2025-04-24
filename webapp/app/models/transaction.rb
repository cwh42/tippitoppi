class Transaction < ApplicationRecord
  validates :upstream_id, uniqueness: true
  validates :upstream_id, :amount, :tip_amount, :timestamp, presence: true

  scope :today, -> { where("timestamp > ?", Time.zone.now.beginning_of_day) }

  def tip_percent
    tip_amount/(amount - tip_amount) * 100
  end

  def self.sync
    syncer = TransactionSyncService.new
    syncer.sync
  end
end
