require 'rails_helper'

RSpec.describe "tipo_magueyes/edit", :type => :view do
  before(:each) do
    @tipo_maguey = assign(:tipo_maguey, TipoMaguey.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit tipo_maguey form" do
    render

    assert_select "form[action=?][method=?]", tipo_maguey_path(@tipo_maguey), "post" do

      assert_select "input#tipo_maguey_nombre[name=?]", "tipo_maguey[nombre]"
    end
  end
end
