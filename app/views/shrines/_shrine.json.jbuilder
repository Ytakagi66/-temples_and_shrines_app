json.extract! shrine, :id, :name, :adress, :nearest_station, :url, :photo, :location, :user_id, :created_at, :updated_at
json.url shrine_url(shrine, format: :json)
