json.extract! transaction, :id, :book_id, :owner_id, :borrower_id, :from, :to, :status, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
