json.array!(@addresses) do |address|
  json.extract! address, :id, :lat, :lon, :city_id_id, :district_id_id, :deliver_in_the_city
  json.url address_url(address, format: :json)
end
