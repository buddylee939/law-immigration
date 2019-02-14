json.extract! citizen_form, :id, :name, :date_of_birth, :bio, :twitter, :github, :website, :user_id, :created_at, :updated_at
json.url citizen_form_url(citizen_form, format: :json)
