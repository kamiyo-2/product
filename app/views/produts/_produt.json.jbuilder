json.extract! produt, :id, :name, :price, :vendor, :created_at, :updated_at
json.url produt_url(produt, format: :json)
