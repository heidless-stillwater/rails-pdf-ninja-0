json.extract! weather, :id, :location, :temperature, :humidity, :windspeed, :created_at, :updated_at
json.url weather_url(weather, format: :json)
