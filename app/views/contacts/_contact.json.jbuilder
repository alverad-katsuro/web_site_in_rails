json.extract! contact, :id, :name, :email, :send_to, :subject, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
