json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :title, :genre, :available, :rating
  json.url book_url(book, format: :json)
end
