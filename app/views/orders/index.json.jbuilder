json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :address_id, :bill_number, :note, :bill_image
  json.url order_url(order, format: :json)
end
