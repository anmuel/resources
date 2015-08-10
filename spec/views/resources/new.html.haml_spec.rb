require 'rails_helper'

RSpec.describe "resources/new", type: :view do
  before(:each) do
    assign(:resource, Resource.new(
      :name => "MyString",
      :uri => "MyString"
    ))
  end

  it "renders new resource form" do
    render

    assert_select "form[action=?][method=?]", resources_path, "post" do

      assert_select "input#resource_name[name=?]", "resource[name]"

      assert_select "input#resource_uri[name=?]", "resource[uri]"
    end
  end
end
