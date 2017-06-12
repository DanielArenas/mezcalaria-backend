require 'rails_helper'

RSpec.describe "regiones/show", :type => :view do
  before(:each) do
    @region = assign(:region, Region.create!(
      :nombre => "Nombre",
      :estado => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(//)
  end
end
