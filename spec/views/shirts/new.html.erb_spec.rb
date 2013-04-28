require 'spec_helper'

describe "shirts/new" do
  before(:each) do
    assign(:shirt, stub_model(Shirt,
      :hersteller => "MyString",
      :bezeichnung => "MyString",
      :ean => "MyString",
      :halsweite => 1,
      :oberweite => 1,
      :taillenweite => 1,
      :rumpflaenge => 1,
      :armellaenge => 1,
      :schulterbreite => 1,
      :rueckenbreite => 1,
      :buendchenlaenge => 1,
      :halbarmlangarm => 1,
      :schnitt => "MyString",
      :kragen => "MyString",
      :brusttasche => "MyString",
      :manschette => "MyString",
      :farbe => "MyString",
      :stoff => "MyString",
      :preis => 1.5,
      :amazon => "MyString"
    ).as_new_record)
  end

  it "renders new shirt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shirts_path, :method => "post" do
      assert_select "input#shirt_hersteller", :name => "shirt[hersteller]"
      assert_select "input#shirt_bezeichnung", :name => "shirt[bezeichnung]"
      assert_select "input#shirt_ean", :name => "shirt[ean]"
      assert_select "input#shirt_halsweite", :name => "shirt[halsweite]"
      assert_select "input#shirt_oberweite", :name => "shirt[oberweite]"
      assert_select "input#shirt_taillenweite", :name => "shirt[taillenweite]"
      assert_select "input#shirt_rumpflaenge", :name => "shirt[rumpflaenge]"
      assert_select "input#shirt_armellaenge", :name => "shirt[armellaenge]"
      assert_select "input#shirt_schulterbreite", :name => "shirt[schulterbreite]"
      assert_select "input#shirt_rueckenbreite", :name => "shirt[rueckenbreite]"
      assert_select "input#shirt_buendchenlaenge", :name => "shirt[buendchenlaenge]"
      assert_select "input#shirt_halbarmlangarm", :name => "shirt[halbarmlangarm]"
      assert_select "input#shirt_schnitt", :name => "shirt[schnitt]"
      assert_select "input#shirt_kragen", :name => "shirt[kragen]"
      assert_select "input#shirt_brusttasche", :name => "shirt[brusttasche]"
      assert_select "input#shirt_manschette", :name => "shirt[manschette]"
      assert_select "input#shirt_farbe", :name => "shirt[farbe]"
      assert_select "input#shirt_stoff", :name => "shirt[stoff]"
      assert_select "input#shirt_preis", :name => "shirt[preis]"
      assert_select "input#shirt_amazon", :name => "shirt[amazon]"
    end
  end
end
