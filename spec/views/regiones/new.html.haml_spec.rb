require 'rails_helper'

RSpec.describe "regiones/new", :type => :view do
  before(:each) do
    assign(:region, Region.new(
      :nombre => "MyString",
      :estado => nil
    ))
  end

  it "renders new region form" do
    render

    assert_select "form[action=?][method=?]", regiones_path, "post" do

      assert_select "input#region_nombre[name=?]", "region[nombre]"

      assert_select "select#region_estado_id[name=?]", "region[estado_id]"
    end
  end
end
