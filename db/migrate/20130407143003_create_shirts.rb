class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :producer
      t.integer :size
      t.integer :halsweite
      t.integer :oberweite
      t.integer :taillenweite
      t.integer :rumpflaenge
      t.integer :aermellaenge
      t.integer :schulterbreite	
      t.integer :rueckenbreite
      t.integer :buendchenlaenge
      t.string :arm
      t.string :schnitt
      t.string :kragen
      t.string :brusttasche	
      t.string :manschette
      t.string :colour
      t.string :stoff
      t.decimal :preis
      t.timestamps
    end
  end
end