json.array!(@sponsores) do |sponsor|
  json.extract! sponsor, :id, :name, :address, :email, :web_page, :description, :logo_sponsor, :outstanding

  json.logo_sponsor sponsor.logo_sponsor.url(:thumb)

  json.url sponsor_url(sponsor, format: :json)
end
