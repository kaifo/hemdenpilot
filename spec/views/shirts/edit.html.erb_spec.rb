require 'spec_helper'

describe "shirts/edit" do
  before(:each) do
    @shirt = assign(:shirt, stub_model(Shirt,
      :producer => "MyString",
      :colour => "MyString",
      :size => 1
    ))
  end

  it "renders the edit shirt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shirts_path(@shirt), :method => "post" do
      assert_select "input#shirt_producer", :name => "shirt[producer]"
      assert_select "input#shirt_colour", :name => "shirt[colour]"
      assert_select "input#shirt_size", :name => "shirt[size]"
    end
  end
end
