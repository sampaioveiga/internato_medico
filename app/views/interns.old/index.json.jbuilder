json.array!(@interns) do |intern|
  json.extract! intern, :nome, :numero_mecanografico, :telefone, :telemovel, :email
  json.url intern_url(intern, format: :json)
end