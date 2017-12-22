json.extract! event, :id, :data, :duration, :topic, :caller_id, :receiver_id, :created_at, :updated_at
json.url event_url(event, format: :json)
