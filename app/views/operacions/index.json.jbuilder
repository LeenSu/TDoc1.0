json.array!(@operacions) do |operacion|
  json.extract! operacion, :id, :remitente, :destinatario, :descripcion, :empleado_id, :tipo_oper_id, :documento_id
  json.url operacion_url(operacion, format: :json)
end
