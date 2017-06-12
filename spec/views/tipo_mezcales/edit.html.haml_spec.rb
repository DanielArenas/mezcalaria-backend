require 'rails_helper'

RSpec.describe "tipo_mezcales/edit", :type => :view do
  before(:each) do
    @tipo_mezcal = assign(:tipo_mezcal, TipoMezcal.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit tipo_mezcal form" do
    render

    assert_select "form[action=?][method=?]", tipo_mezcal_path(@tipo_mezcal), "post" do

      assert_select "input#tipo_mezcal_nombre[name=?]", "tipo_mezcal[nombre]"
    end
  end
end
