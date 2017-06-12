require 'rails_helper'

RSpec.describe "sponsores/index", type: :view do
  before(:each) do
    assign(:sponsores, [
      Sponsor.create!(
        :name => "Name",
        :address => "Address",
        :email => "Email",
        :web_page => "Web Page",
        :description => "MyText",
        :logo => "Logo",
        :outstanding => false
      ),
      Sponsor.create!(
        :name => "Name",
        :address => "Address",
        :email => "Email",
        :web_page => "Web Page",
        :description => "MyText",
        :logo => "Logo",
        :outstanding => false
      )
    ])
  end

  it "renders a list of sponsores" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Web Page".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
