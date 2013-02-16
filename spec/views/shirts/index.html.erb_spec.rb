require 'spec_helper'

describe "shirts/index" do
  before(:each) do
    assign(:shirts, [
      stub_model(Shirt,
        :producer => "Producer",
        :colour => "Colour",
        :size => 1
      ),
      stub_model(Shirt,
        :producer => "Producer",
        :colour => "Colour",
        :size => 1
      )
    ])
  end

  it "renders a list of shirts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Producer".to_s, :count => 2
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
