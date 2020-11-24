json.extract! product, :id, :name, :count, :small_desc, :description, :price, :available, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
