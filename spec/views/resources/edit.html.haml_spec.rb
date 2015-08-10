require 'rails_helper'

RSpec.describe "resources/edit", type: :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :name => "MyString",
      :uri => "MyString"
    ))
  end

  it "renders the edit resource form" do
    render

    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do

      assert_select "input#resource_name[name=?]", "resource[name]"

      assert_select "input#resource_uri[name=?]", "resource[uri]"
    end
  end
end
