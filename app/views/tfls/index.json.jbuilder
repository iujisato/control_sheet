json.array!(@tfls) do |tfl|
  json.extract! tfl, :id, :name
  json.url tfl_url(tfl, format: :json)
end
