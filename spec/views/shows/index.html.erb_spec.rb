require 'rails_helper'

RSpec.describe "shows/index", :type => :view do
  before(:each) do
    assign(:shows, [
      Show.create!(
        :name => "Name",
        :overview => "MyText"
      ),
      Show.create!(
        :name => "Name",
        :overview => "MyText"
      )
    ])
  end

  it "renders a list of shows" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
