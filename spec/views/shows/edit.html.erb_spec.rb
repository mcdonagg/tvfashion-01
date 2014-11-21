require 'rails_helper'

RSpec.describe "shows/edit", :type => :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :name => "MyString",
      :overview => "MyText"
    ))
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(@show), "post" do

      assert_select "input#show_name[name=?]", "show[name]"

      assert_select "textarea#show_overview[name=?]", "show[overview]"
    end
  end
end
