json.array!(@animals) do |animal|
  json.extract! animal, :id, :show, :name, :size
  json.url animal_url(animal, format: :json)
end
