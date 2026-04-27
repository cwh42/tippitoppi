class TransactionsController < ApplicationController
  def index
    @date = params[:date]&.to_date || Time.zone.today
    #Transaction.sync if @date.today? # FIXME: sync if day not synced
    @transactions = Transaction.at_date(@date)
  end

  def share
    @date = params[:date]&.to_date || Time.zone.today

    transactions = Transaction.at_date(@date)

    workers = Worktime.at_date(@date)

    worker_shortnames = workers.names

    @table_headings = %w[Zeit Trinkgeld %] + worker_shortnames
    @table = []

    transactions.group_by { |tx| tx.timestamp.localtime.hour }.each do |g, txs|
      txs.each do |tx|
        share = tx.share.fetch_values(*workers.names) { |t| nil }.map { |v| f_curr(v) }
        @table <<  [ tx.timestamp.localtime.to_fs(:time),
                  ActionController::Base.helpers.number_to_currency(tx.tip_amount, locale: :de),
                  ActionController::Base.helpers.number_to_percentage(tx.tip_percent, precision: 0) ] + share
      end
    end

    row = Array.new(@table_headings.size)
    row[0..2] = [ 'Summe',
                  ActionController::Base.helpers.number_to_currency(transactions.sum { |t| t.tip_amount }, locale: :de),
                  ActionController::Base.helpers.number_to_percentage(transactions.tip_percent, precision: 0) ]
    row[3..] = transactions.share.fetch_values(*workers.names) { |t| nil }.map { |v| f_curr(v) }
    @table << row if @table.any?
  end

  private

  def f_curr(num)
    num.nil? ? "-" : ActionController::Base.helpers.number_to_currency(num, locale: :de)
  end
end
