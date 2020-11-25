json.extract! order, :id, :full_name, :shipping_address, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
