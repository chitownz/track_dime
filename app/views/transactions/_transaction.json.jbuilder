json.extract! transaction, :id, :date, :title, :category, :transaction_type, :description, :address, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
