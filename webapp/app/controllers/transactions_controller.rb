class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.sync
  end
end
