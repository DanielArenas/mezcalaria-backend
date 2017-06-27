json.extract! @event, :id, :name, :place, :date_event, :baner, :is_free, :start_time, :end_time

json.baner @event.baner.url(:thumb)
