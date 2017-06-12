require 'rails_helper'

RSpec.describe "municipios/new", :type => :view do
  before(:each) do
    assign(:municipio, Municipio.new(
      :nombre => "MyString",
      :estado => nil,
      :region => nil
    ))
  end

  it "renders new municipio form" do
    render

    assert_select "form[action=?][method=?]", municipios_path, "post" do

      assert_select "input#municipio_nombre[name=?]", "municipio[nombre]"

      assert_select "select#municipio_estado_id[name=?]", "municipio[estado_id]"

      assert_select "select#municipio_region_id[name=?]", "municipio[region_id]"
    end
  end
end
