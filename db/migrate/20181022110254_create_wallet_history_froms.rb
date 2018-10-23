class CreateWalletHistoryFroms < ActiveRecord::Migration[5.2]
  def change
    create_table :wallet_history_froms do |t|
      t.integer :wallet_id
      t.integer :wallet_history_id

      t.timestamps
    end
  end
end
