json.extract! equipment, :id, :serial, :make, :model, :description, :warranty_expiration, :cost, :price, :note, :condition, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
