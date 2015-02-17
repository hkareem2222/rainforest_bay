json.array!(@products) do |product|
  json.extract! product, :id, :name, :condition, :starting_bid, :location, :quantity, :buy_now_price, :description
  json.url product_url(product, format: :json)
end
