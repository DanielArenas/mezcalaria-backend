require 'rails_helper'

RSpec.describe "tipo_destilados/new", :type => :view do
  before(:each) do
    assign(:tipo_destilado, TipoDestilado.new(
      :nombre => "MyString"
    ))
  end

  it "renders new tipo_destilado form" do
    render

    assert_select "form[action=?][method=?]", tipo_destilados_path, "post" do

      assert_select "input#tipo_destilado_nombre[name=?]", "tipo_destilado[nombre]"
    end
  end
end
