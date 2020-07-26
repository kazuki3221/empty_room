json.extract! room, :id, :number, :floor, :room_type, :side, :smoke, :created_at, :updated_at
json.url room_url(room, format: :json)
