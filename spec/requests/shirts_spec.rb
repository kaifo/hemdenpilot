require 'spec_helper'

describe "Shirts" do
  describe "GET /shirts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get shirts_path
      response.status.should be(200)
    end
  end
end
