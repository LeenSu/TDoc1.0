json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :nombre, :titulo, :area_id
  json.url cargo_url(cargo, format: :json)
end
