class Shirt < ActiveRecord::Base
  attr_accessible :id, :hersteller, :bezeichnung, :ean, :halsweite, :oberweite, :taillenweite, :rumpflaenge, :armellaenge, :schulterbreite, :rueckenbreite, :buendchenlaenge, :halbarmlangarm, :schnitt, :kragen, :brusttasche, :manschette, :farbe, :stoff, :preis, :created_at, :updated_at

def self.search(halsweite, oberweite, taillenweite)
	where(:halsweite => halsweite, :oberweite => oberweite, :taillenweite => taillenweite)
end

def self.searchapprox(halsweite, oberweite, taillenweite)

	halsweite_max = halsweite.to_f + 5%
	halsweite_min = halsweite.to_f - 5%
	oberweite_max = oberweite.to_f + 5%
	oberweite_min = oberweite.to_f - 5%		
	taillenweite_max = taillenweite.to_f + 4
	taillenweite_min = taillenweite.to_f - 4

	where(:halsweite => halsweite_min...halsweite_max, :oberweite => oberweite_min...oberweite_max, :taillenweite => taillenweite_min...taillenweite_max)
end

def self.dropdown
	 #select(:schnitt).size
end

end
