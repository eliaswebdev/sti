json.array!(@bicicletas) do |bicicleta|
  json.extract! bicicleta, :id
  json.url bicicleta_url(bicicleta, format: :json)
end
