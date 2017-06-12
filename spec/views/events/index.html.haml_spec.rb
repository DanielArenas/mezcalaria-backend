require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :place => "Place",
        :baner => "Baner",
        :is_free => false
      ),
      Event.create!(
        :name => "Name",
        :place => "Place",
        :baner => "Baner",
        :is_free => false
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Baner".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
