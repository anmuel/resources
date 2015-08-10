require 'rails_helper'

RSpec.describe "resources/index", type: :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :name => "Name",
        :uri => "Uri"
      ),
      Resource.create!(
        :name => "Name",
        :uri => "Uri"
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
  end
end
