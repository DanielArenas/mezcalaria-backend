require 'rails_helper'

RSpec.describe "marcas/edit", :type => :view do
  before(:each) do
    @marca = assign(:marca, Marca.create!(
      :nombre => "MyString",
      :logotipo => "MyString",
      :direccion => "MyString",
      :correo => "MyString"
    ))
  end

  it "renders the edit marca form" do
    render

    assert_select "form[action=?][method=?]", marca_path(@marca), "post" do

      assert_select "input#marca_nombre[name=?]", "marca[nombre]"

      assert_select "input#marca_logotipo[name=?]", "marca[logotipo]"

      assert_select "input#marca_direccion[name=?]", "marca[direccion]"

      assert_select "input#marca_correo[name=?]", "marca[correo]"
    end
  end
end
