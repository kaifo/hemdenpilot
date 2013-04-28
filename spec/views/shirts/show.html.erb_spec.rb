require 'spec_helper'

describe "shirts/show" do
  before(:each) do
    @shirt = assign(:shirt, stub_model(Shirt,
      :hersteller => "Hersteller",
      :bezeichnung => "Bezeichnung",
      :ean => "Ean",
      :halsweite => 1,
      :oberweite => 2,
      :taillenweite => 3,
      :rumpflaenge => 4,
      :armellaenge => 5,
      :schulterbreite => 6,
      :rueckenbreite => 7,
      :buendchenlaenge => 8,
      :halbarmlangarm => 9,
      :schnitt => "Schnitt",
      :kragen => "Kragen",
      :brusttasche => "Brusttasche",
      :manschette => "Manschette",
      :farbe => "Farbe",
      :stoff => "Stoff",
      :preis => 1.5,
      :amazon => "Amazon"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hersteller/)
    rendered.should match(/Bezeichnung/)
    rendered.should match(/Ean/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/Schnitt/)
    rendered.should match(/Kragen/)
    rendered.should match(/Brusttasche/)
    rendered.should match(/Manschette/)
    rendered.should match(/Farbe/)
    rendered.should match(/Stoff/)
    rendered.should match(/1.5/)
    rendered.should match(/Amazon/)
  end
end
