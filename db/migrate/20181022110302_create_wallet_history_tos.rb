class CreateWalletHistoryTos < ActiveRecord::Migration[5.2]
  def change
    create_table :wallet_history_tos do |t|
      t.integer :wallet_id
      t.integer :wallet_history_id

      t.timestamps
    end
  end
end
