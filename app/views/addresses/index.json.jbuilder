json.array!(@addresses) do |address|
  json.extract! address, :id, :city, :district, :street, :num
  json.url address_url(address, format: :json)
end
