json.extract! medicamento, :id, :nombre, :descripcion, :cantidad, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
