json.extract! @sponsor, :id, :name, :address, :email, :web_page, :description, :logo_sponsor, :outstanding, :created_at, :updated_at

json.logo_sponsor @sponsor.logo_sponsor.url