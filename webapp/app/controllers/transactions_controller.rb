class TransactionsController < ApplicationController
  def index
    @date = params[:date].to_date || Time.zone.today
    @transactions = Transaction.sync(@date)
  end
end
