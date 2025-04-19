json.extract! profile, :id, :name, :role, :email, :linkedln, :github, :other, :created_at, :updated_at
json.url profile_url(profile, format: :json)
