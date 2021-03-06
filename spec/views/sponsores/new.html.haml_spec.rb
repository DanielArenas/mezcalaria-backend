require 'rails_helper'

RSpec.describe "sponsores/new", type: :view do
  before(:each) do
    assign(:sponsor, Sponsor.new(
      :name => "MyString",
      :address => "MyString",
      :email => "MyString",
      :web_page => "MyString",
      :description => "MyText",
      :logo => "MyString",
      :outstanding => false
    ))
  end

  it "renders new sponsor form" do
    render

    assert_select "form[action=?][method=?]", sponsores_path, "post" do

      assert_select "input#sponsor_name[name=?]", "sponsor[name]"

      assert_select "input#sponsor_address[name=?]", "sponsor[address]"

      assert_select "input#sponsor_email[name=?]", "sponsor[email]"

      assert_select "input#sponsor_web_page[name=?]", "sponsor[web_page]"

      assert_select "textarea#sponsor_description[name=?]", "sponsor[description]"

      assert_select "input#sponsor_logo[name=?]", "sponsor[logo]"

      assert_select "input#sponsor_outstanding[name=?]", "sponsor[outstanding]"
    end
  end
end
