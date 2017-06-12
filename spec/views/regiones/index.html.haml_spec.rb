require 'rails_helper'

RSpec.describe "regiones/index", :type => :view do
  before(:each) do
    assign(:regiones, [
      Region.create!(
        :nombre => "Nombre",
        :estado => nil
      ),
      Region.create!(
        :nombre => "Nombre",
        :estado => nil
      )
    ])
  end

  it "renders a list of regiones" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
