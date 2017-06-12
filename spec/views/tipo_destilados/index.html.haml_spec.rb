require 'rails_helper'

RSpec.describe "tipo_destilados/index", :type => :view do
  before(:each) do
    assign(:tipo_destilados, [
      TipoDestilado.create!(
        :nombre => "Nombre 1"
      ),
      TipoDestilado.create!(
        :nombre => "Nombre 2"
      )
    ])
  end

  it "renders a list of tipo_destilados" do
    render
    assert_select "tr>td", :text => "Nombre 1"
    assert_select "tr>td", :text => "Nombre 2"
  end
end
