json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :logo, :website, :facebook_page, :linkedin, :description, :user_id, :country_id
  json.url company_url(company, format: :json)
end
