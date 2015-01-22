json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :index, :show, :name, :color
  json.url shirt_url(shirt, format: :json)
end
