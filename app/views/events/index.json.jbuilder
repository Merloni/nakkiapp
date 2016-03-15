json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :user_id, :place_id
  json.url event_url(event, format: :json)
end
