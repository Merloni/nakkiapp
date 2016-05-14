json.array!(@shifts) do |shift|
  json.extract! shift, :id, :task_id, :user_id, :hour
  json.url shift_url(shift, format: :json)
end
