json.extract! empleado, :id, :documento, :numero, :nombre, :direcion, :lugar, :telefono, :movil, :correo, :usuario, :contrasena, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
