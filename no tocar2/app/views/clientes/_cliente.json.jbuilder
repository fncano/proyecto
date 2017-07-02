json.extract! cliente, :id, :documento, :numero, :nombre, :direcion, :lugar, :telefono, :movil, :correo, :empleado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
