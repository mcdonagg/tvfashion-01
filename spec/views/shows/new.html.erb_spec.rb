require 'rails_helper'

RSpec.describe "shows/new", :type => :view do
  before(:each) do
    assign(:show, Show.new(
      :name => "MyString",
      :overview => "MyText"
    ))
  end

  it "renders new show form" do
    render

    assert_select "form[action=?][method=?]", shows_path, "post" do

      assert_select "input#show_name[name=?]", "show[name]"

      assert_select "textarea#show_overview[name=?]", "show[overview]"
    end
  end
end
