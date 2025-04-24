class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.string :upstream_id
      t.decimal :amount
      t.decimal :tip_amount
      t.datetime :timestamp
      t.timestamps
    end
  end
end
