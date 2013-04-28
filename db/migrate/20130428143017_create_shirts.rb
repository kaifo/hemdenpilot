class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :hersteller
      t.string :bezeichnung
      t.string :ean
      t.integer :halsweite
      t.integer :oberweite
      t.integer :taillenweite
      t.integer :rumpflaenge
      t.integer :armellaenge
      t.integer :schulterbreite
      t.integer :rueckenbreite
      t.integer :buendchenlaenge
      t.integer :halbarmlangarm
      t.string :schnitt
      t.string :kragen
      t.string :brusttasche
      t.string :manschette
      t.string :farbe
      t.string :stoff
      t.float :preis
      t.string :amazon

      t.timestamps
    end
  end
end
