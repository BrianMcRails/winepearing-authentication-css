json.array!(@addresses) do |address|
  json.extract! address, :id, :full_name, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :user_id
  json.url address_url(address, format: :json)
end
