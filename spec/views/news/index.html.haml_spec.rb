require 'rails_helper'

RSpec.describe "news/index", type: :view do
  before(:each) do
    assign(:news, [
      News.create!(
        :tittle => "Tittle",
        :description => "MyText",
        :video => "Video"
      ),
      News.create!(
        :tittle => "Tittle",
        :description => "MyText",
        :video => "Video"
      )
    ])
  end

  it "renders a list of news" do
    render
    assert_select "tr>td", :text => "Tittle".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
