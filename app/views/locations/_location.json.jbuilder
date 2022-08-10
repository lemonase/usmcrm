json.extract! location, :id, :name, :address, :city, :state, :postal, :country, :phone, :note, :created_at, :updated_at
json.url location_url(location, format: :json)
