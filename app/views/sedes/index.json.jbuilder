json.array!(@sedes) do |sede|
  json.extract! sede, :id, :nombre, :ciudad
  json.url sede_url(sede, format: :json)
end
