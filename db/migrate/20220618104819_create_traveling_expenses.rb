class CreateTravelingExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :traveling_expenses do |t|
      t.integer :amount
      t.date :day
      t.integer :user_id
      t.timestamps
    end
  end
end
