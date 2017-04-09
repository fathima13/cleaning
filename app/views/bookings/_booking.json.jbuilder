json.extract! booking, :id, :date, :customer_id, :cleaner_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
