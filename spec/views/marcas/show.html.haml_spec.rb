require 'rails_helper'

RSpec.describe "marcas/show", :type => :view do
  before(:each) do
    @marca = assign(:marca, Marca.create!(
      :nombre => "Nombre",
      :logotipo => "Logotipo",
      :direccion => "Direccion",
      :correo => "Correo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Logotipo/)
    expect(rendered).to match(/Direccion/)
    expect(rendered).to match(/Correo/)
  end
end
