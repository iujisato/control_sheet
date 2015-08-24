json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :telephone, :cellphone
  json.url employee_url(employee, format: :json)
end
