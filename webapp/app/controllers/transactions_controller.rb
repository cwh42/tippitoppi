class TransactionsController < ApplicationController
  def index
    @date = params[:date]&.to_date || Time.zone.today
    Transaction.sync if @date.today? # FIXME: sync if day not synced
    @transactions = Transaction.at_date(@date)
  end
end
