class CreateWorktimes < ActiveRecord::Migration[8.0]
  def change
    create_table :worktimes do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :pause

      t.timestamps
    end
  end
end
