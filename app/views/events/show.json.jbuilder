json.extract! @event, :id, :name, :place, :date_event, :baner, :is_free, :created_at, :updated_at

json.baner @event.baner.url(:thumb)
