require 'rails_helper'

RSpec.describe "shows/show", :type => :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :name => "Name",
      :overview => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
