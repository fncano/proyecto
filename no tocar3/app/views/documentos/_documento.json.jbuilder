json.extract! documento, :id, :nombre, :created_at, :updated_at
json.url documento_url(documento, format: :json)
