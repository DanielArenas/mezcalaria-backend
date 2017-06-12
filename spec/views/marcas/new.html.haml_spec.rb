require 'rails_helper'

RSpec.describe "marcas/new", :type => :view do
  before(:each) do
    assign(:marca, Marca.new(
      :nombre => "MyString",
      :logotipo => "MyString",
      :direccion => "MyString",
      :correo => "MyString"
    ))
  end

  it "renders new marca form" do
    render

    assert_select "form[action=?][method=?]", marcas_path, "post" do

      assert_select "input#marca_nombre[name=?]", "marca[nombre]"

      assert_select "input#marca_logotipo[name=?]", "marca[logotipo]"

      assert_select "input#marca_direccion[name=?]", "marca[direccion]"

      assert_select "input#marca_correo[name=?]", "marca[correo]"
    end
  end
end
