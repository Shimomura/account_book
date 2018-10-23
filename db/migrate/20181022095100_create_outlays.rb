class CreateOutlays < ActiveRecord::Migration[5.2]
  def change
    create_table :outlays do |t|
      t.integer :amount
      t.date :date
      t.integer :category_id
      t.integer :wallet_id
      t.string :memo

      t.timestamps
    end
  end
end
