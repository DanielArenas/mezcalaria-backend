require 'rails_helper'

RSpec.describe "tipo_destilados/edit", :type => :view do
  before(:each) do
    @tipo_destilado = assign(:tipo_destilado, TipoDestilado.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit tipo_destilado form" do
    render

    assert_select "form[action=?][method=?]", tipo_destilado_path(@tipo_destilado), "post" do

      assert_select "input#tipo_destilado_nombre[name=?]", "tipo_destilado[nombre]"
    end
  end
end
