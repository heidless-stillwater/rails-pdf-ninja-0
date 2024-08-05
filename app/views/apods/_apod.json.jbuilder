json.extract! apod, :id, :name, :picture, :created_at, :updated_at
json.url apod_url(apod, format: :json)
