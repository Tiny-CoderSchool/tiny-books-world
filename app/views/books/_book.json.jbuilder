json.extract! book, :id, :name, :description, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
