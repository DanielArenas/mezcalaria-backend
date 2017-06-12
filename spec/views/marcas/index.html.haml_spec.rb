require 'rails_helper'

RSpec.describe "marcas/index", :type => :view do
  before(:each) do
    assign(:marcas, [
      Marca.new(
        :id => 1,
        :nombre => "Nombre 1",
        :direccion => "Direccion 1",
        :correo => "nombre1@mail.com"
      ),
      Marca.new(
        :id => 2,
        :nombre => "Nombre 2",
        :direccion => "Direccion 2",
        :correo => "nombre2@mail.com"
      )
    ])
  end

  it "renders a list of marcas" do
    render
    assert_select "tr>td", :text => "Nombre 1"
    assert_select "tr>td", :text => "Direccion 1"
    assert_select "tr>td", :text => "nombre1@mail.com"
    assert_select "tr>td", :text => "Nombre 2"
    assert_select "tr>td", :text => "Direccion 2"
    assert_select "tr>td", :text => "nombre2@mail.com"
  end
end
