json.array!(@supervisors) do |supervisor|
  json.extract! supervisor, :nome, :especialidade, :telefone, :telemovel, :email
  json.url supervisor_url(supervisor, format: :json)
end