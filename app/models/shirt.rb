class Shirt < ActiveRecord::Base
  attr_accessible :hersteller, :bezeichnung, :ean, :halsweite, :oberweite, :taillenweite, :rumpflaenge, :armellaenge, :schulterbreite, :rueckenbreite, :buendchenlaenge, :halbarmlangarm, :schnitt, :kragen, :brusttasche, :manschette, :farbe, :stoff, :preis, :created_at, :updated_at

end
