json.extract! user, :id, :usuario, :contraseña, :tpusu, :nombre , :apellido, :correo , :Cargo , :created_at, :updated_at
json.url user_url(user, format: :json)