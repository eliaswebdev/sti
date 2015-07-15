json.array!(@motocicletas) do |motocicleta|
  json.extract! motocicleta, :id
  json.url motocicleta_url(motocicleta, format: :json)
end
