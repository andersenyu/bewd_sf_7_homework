json.array!(@items) do |item|
  json.extract! item, :id, :id, :name, :description, :container_id, :checked_out_id, :user_checked_out
  json.url item_url(item, format: :json)
end
