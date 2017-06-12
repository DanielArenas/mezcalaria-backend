require 'rails_helper'

RSpec.describe "municipios/index", :type => :view do
  before(:each) do
    assign(:municipios, [
      Municipio.create!(
        :nombre => "Municipio 1",
        :estado => nil,
        :region => nil
      ),
      Municipio.create!(
        :nombre => "Municipio 2",
        :estado => nil,
        :region => nil
      )
    ])
  end

  it "renders a list of municipios" do
    render
    assert_select "tr>td", :text => "Municipio 1"
    assert_select "tr>td", :text => "Municipio 2"
  end
end
