json.array!(@fyoptions) do |fyoption|
  json.extract! fyoption, :nome
  json.url fyoption_url(fyoption, format: :json)
end