json.extract! wallet_history, :id, :name, :amount, :created_at, :updated_at
json.url wallet_history_url(wallet_history, format: :json)
