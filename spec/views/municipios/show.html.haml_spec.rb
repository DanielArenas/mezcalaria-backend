require 'rails_helper'

RSpec.describe "municipios/show", :type => :view do
  before(:each) do
    @municipio = assign(:municipio, Municipio.create!(
      :nombre => "Nombre",
      :estado => nil,
      :region => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
