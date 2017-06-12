require 'rails_helper'

RSpec.describe "tipo_mezcales/new", :type => :view do
  before(:each) do
    assign(:tipo_mezcal, TipoMezcal.new(
      :nombre => "MyString"
    ))
  end

  it "renders new tipo_mezcal form" do
    render

    assert_select "form[action=?][method=?]", tipo_mezcales_path, "post" do

      assert_select "input#tipo_mezcal_nombre[name=?]", "tipo_mezcal[nombre]"
    end
  end
end
