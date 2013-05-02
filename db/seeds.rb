require 'open-uri'

Shirt.delete_all
open("https://dl.dropboxusercontent.com/u/15177788/datenbank.csv") do |shirt|
  shirt.read.each_line do |shirt|
	 hersteller, bezeichnung, ean, halsweite, oberweite, taillenweite, rumpflaenge, armellaenge, schulterbreite, rueckenbreite, buendchenlaenge, halbarmlangarm, schnitt, kragen, brusttasche, manschette, farbe, stoff, preis = shirt.chomp.split(",")
    Shirt.create!(:hersteller => hersteller, :bezeichnung => bezeichnung, :ean => ean, :halsweite => halsweite, :oberweite => oberweite, :taillenweite => taillenweite, :rumpflaenge => rumpflaenge, :armellaenge => armellaenge, :schulterbreite => schulterbreite, :rueckenbreite => rueckenbreite, :buendchenlaenge => buendchenlaenge, :halbarmlangarm => halbarmlangarm, :schnitt => schnitt, :kragen => kragen, :brusttasche => brusttasche, :manschette => manschette, :farbe => farbe, :stoff => stoff, :preis => preis)
		puts 'created ' + hersteller + ' ' + halsweite + ' ' + halbarmlangarm
  end
end
