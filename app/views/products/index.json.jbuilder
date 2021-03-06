json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :created_at, :manufacturer, :stock, :category
  json.url product_url(product, format: :json)
end
