json.array!(@caminhoes) do |caminhao|
  json.extract! caminhao, :id
  json.url caminhao_url(caminhao, format: :json)
end
