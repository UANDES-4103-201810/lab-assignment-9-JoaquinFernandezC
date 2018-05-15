json.extract! address, :id, :street, :apartment, :description, :zipcode, :created_at, :updated_at
json.url address_url(address, format: :json)
