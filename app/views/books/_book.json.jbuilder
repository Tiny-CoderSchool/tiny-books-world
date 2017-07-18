json.extract! book, :id, :title, :descriptions, :publisher, :published_date, :type, :page, :created_at, :updated_at
json.url book_url(book, format: :json)
