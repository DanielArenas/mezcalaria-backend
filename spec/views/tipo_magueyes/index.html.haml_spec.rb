require 'rails_helper'

RSpec.describe "tipo_magueyes/index", :type => :view do
  before(:each) do
    assign(:tipo_magueyes, [
      TipoMaguey.create!(
        :nombre => "Tipo 1"
      ),
      TipoMaguey.create!(
        :nombre => "Tipo 2"
      )
    ])
  end

  it "renders a list of tipo_magueyes" do
    render
    assert_select "tr>td", :text => "Tipo 1"
    assert_select "tr>td", :text => "Tipo 2"
  end
end
