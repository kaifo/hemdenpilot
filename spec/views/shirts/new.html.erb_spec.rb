require 'spec_helper'

describe "shirts/new" do
  before(:each) do
    assign(:shirt, stub_model(Shirt,
      :producer => "MyString",
      :colour => "MyString",
      :size => 1
    ).as_new_record)
  end

  it "renders new shirt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shirts_path, :method => "post" do
      assert_select "input#shirt_producer", :name => "shirt[producer]"
      assert_select "input#shirt_colour", :name => "shirt[colour]"
      assert_select "input#shirt_size", :name => "shirt[size]"
    end
  end
end
