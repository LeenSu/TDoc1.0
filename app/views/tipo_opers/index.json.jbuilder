json.array!(@tipo_opers) do |tipo_oper|
  json.extract! tipo_oper, :id, :nombre
  json.url tipo_oper_url(tipo_oper, format: :json)
end
