class CreateWalletHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :wallet_histories do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
