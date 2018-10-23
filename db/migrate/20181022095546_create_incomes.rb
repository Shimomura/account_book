class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.integer :amount
      t.integer :source_id
      t.date :date
      t.string :memo

      t.timestamps
    end
  end
end
