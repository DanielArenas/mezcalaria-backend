json.array!(@events) do |event|
  json.extract! event, :id, :name, :place, :date_event, :baner, :is_free

  json.baner event.baner.url(:thumb)
  json.url event_url(event, format: :json)
end
