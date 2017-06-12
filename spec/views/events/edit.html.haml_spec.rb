require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :place => "MyString",
      :baner => "MyString",
      :is_free => false
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_place[name=?]", "event[place]"

      assert_select "input#event_baner[name=?]", "event[baner]"

      assert_select "input#event_is_free[name=?]", "event[is_free]"
    end
  end
end
