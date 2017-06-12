require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :place => "MyString",
      :baner => "MyString",
      :is_free => false
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_place[name=?]", "event[place]"

      assert_select "input#event_baner[name=?]", "event[baner]"

      assert_select "input#event_is_free[name=?]", "event[is_free]"
    end
  end
end
