json.array!(@areas) do |area|
  json.extract! area, :id, :nombre, :titulo, :sede_id
  json.url area_url(area, format: :json)
end
