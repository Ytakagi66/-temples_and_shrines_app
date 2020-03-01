json.extract! user_id, :id, :name, :old, :email, :password, :created_at, :updated_at
json.url user_id_url(user_id, format: :json)
