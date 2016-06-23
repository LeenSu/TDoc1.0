json.array!(@documentos) do |documento|
  json.extract! documento, :id, :num_expediente, :asunto, :folio, :ubic_archivo, :rpta, :firma
  json.url documento_url(documento, format: :json)
end
