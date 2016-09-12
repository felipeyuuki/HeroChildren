json.extract! registration, :id, :dateRegistration, :noteRegistration, :child_id, :mother, :team_id, :nursery_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)