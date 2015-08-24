json.array!(@cashes) do |cash|
  json.extract! cash, :id, :value
  json.url cash_url(cash, format: :json)
end
