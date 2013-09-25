json.array!(@healthcareunits) do |healthcareunit|
  json.extract! healthcareunit, :nome
  json.url healthcareunit_url(healthcareunit, format: :json)
end