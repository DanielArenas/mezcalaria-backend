require 'rails_helper'

RSpec.describe "magueyes/index", type: :view do
  before(:each) do
    assign(:magueyes, [
      Magueye.create!(
        :title => "Title",
        :sub_title => "Sub Title",
        :text => "",
        :image => "Image",
        :language => 1
      ),
      Magueye.create!(
        :title => "Title",
        :sub_title => "Sub Title",
        :text => "",
        :image => "Image",
        :language => 1
      )
    ])
  end

  it "renders a list of magueyes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
