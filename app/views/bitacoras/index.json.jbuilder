json.array!(@bitacoras) do |bitacora|
  json.extract! bitacora, :id, :nombre, :telefono, :correo, :municipio, :estado, :area, :acreditado, :alcalde, :esquema, :convenio, :tipo, :acuerdo, :fechaacuerdo, :fechaseguimiento, :fechaevaluacion, :resultado
  json.url bitacora_url(bitacora, format: :json)
end
