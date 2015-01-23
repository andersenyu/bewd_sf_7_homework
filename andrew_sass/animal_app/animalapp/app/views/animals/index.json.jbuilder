json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :breed, :age
  json.url animal_url(animal, format: :json)
end
