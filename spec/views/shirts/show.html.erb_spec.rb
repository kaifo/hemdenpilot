require 'spec_helper'

describe "shirts/show" do
  before(:each) do
    @shirt = assign(:shirt, stub_model(Shirt,
      :producer => "Producer",
      :colour => "Colour",
      :size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Producer/)
    rendered.should match(/Colour/)
    rendered.should match(/1/)
  end
end
