class TransactionSyncService
  attr_reader :merchant_code
  attr_reader :api_instance

  def initialize
    @api_instance = ::OpenapiClient::TransactionsApi.new
  end

  def sync(merchant_code: Rails.application.credentials.sumup.merchant_code, date: Time.zone.today)
    raise ArgumentError, "No default merchant_code configured" if merchant_code.blank?

    @merchant_code = merchant_code

    transaction_list(date).map do |tx|
      tx = transaction(tx.id)
      Transaction.find_or_create_by(upstream_id: tx.id) do |t|
        t.amount = tx.amount
        t.tip_amount = tx.tip_amount
        t.timestamp = tx.timestamp
      end
    end
  end

  private

  def transaction_list(date = Time.zone.today)
    opts = {
      oldest_time: date.beginning_of_workday.iso8601,
      newest_time: date.end_of_workday.iso8601,
      limit: 100,
      statuses: [ "SUCCESSFUL" ]
    }

    api_instance.list_transactions_v2_1(merchant_code, opts).items
  end

  def transaction(id)
    api_instance.get_transaction_v2_1(merchant_code, { id: id })
  end
end
