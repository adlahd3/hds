json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :mobile, :message_language, :email
  json.url customer_url(customer, format: :json)
end
