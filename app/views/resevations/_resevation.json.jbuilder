json.extract! resevation, :id, :start_stay, :end_stay, :room_id, :customer_id, :user_id, :created_at, :updated_at
json.url resevation_url(resevation, format: :json)
