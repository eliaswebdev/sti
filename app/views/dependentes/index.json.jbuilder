json.array!(@dependentes) do |dependente|
  json.extract! dependente, :id
  json.url dependente_url(dependente, format: :json)
end
