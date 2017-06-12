require 'rails_helper'

RSpec.describe "tipo_mezcales/index", :type => :view do
  before(:each) do
    assign(:tipo_mezcales, [
      TipoMezcal.create!(
        :nombre => "Tipo 1"
      ),
      TipoMezcal.create!(
        :nombre => "Tipo 2"
      )
    ])
  end

  it "renders a list of tipo_mezcales" do
    render
    assert_select "tr>td", :text => "Tipo 1"
    assert_select "tr>td", :text => "Tipo 2"
  end
end
