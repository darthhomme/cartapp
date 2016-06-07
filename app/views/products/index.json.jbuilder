json.array!(@products) do |product|
  json.extract! product, :id, :name, :brand, :model, :sku, :price, :desc
  json.url product_url(product, format: :json)
end
