json.array!(@companies) do |company|
  json.extract! company, :id, :name, :username, :email, :encrypted_password
  json.url company_url(company, format: :json)
end
