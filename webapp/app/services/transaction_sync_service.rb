class TransactionSyncService
  attr_reader :merchant_code
  attr_reader :api_instance

  def initialize
    @api_instance = ::OpenapiClient::TransactionsApi.new
  end

  def sync(merchant_code: Rails.application.credentials.sumup.merchant_code)
    raise ArgumentError, "No default merchant_code configured" if merchant_code.blank?

    @merchant_code = merchant_code

    transaction_list.map do |tx|
      tx = transaction(tx.id)
      Transaction.find_or_create_by(upstream_id: tx.id) do |t|
        t.amount = tx.amount
        t.tip_amount = tx.tip_amount
        t.timestamp = tx.timestamp
      end
    end
  end

  private

  def transaction_list(t = Time.now)
    opts = {
      oldest_time: workday_start(t).iso8601,
      newest_time: workday_end(t).iso8601,
      limit: 100,
      statuses: [ "SUCCESSFUL" ]
    }

    api_instance.list_transactions_v2_1(merchant_code, opts).items
  end

  def transaction(id)
    api_instance.get_transaction_v2_1(merchant_code, { id: id })
  end

  def workday_start(t = Time.now)
    offset = t.hour < 5 ? 1 : 0
    t -= offset.days
    Time.new(t.year, t.month, t.day, 5)
  end

  def workday_end(t = Time.now)
    offset = t.hour < 5 ? 0 : 1
    t += offset.days
    Time.new(t.year, t.month, t.day, 5)
  end
end
