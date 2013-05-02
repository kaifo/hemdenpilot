class AddPicture < ActiveRecord::Migration
  def change
		add_column :shirts, :picture, :string
  
		change_table :shirts do |t|
      t.remove :halsweite
      t.remove :oberweite
      t.remove :taillenweite
      t.remove :rumpflaenge
      t.remove :armellaenge
      t.remove :schulterbreite
      t.remove :rueckenbreite
      t.remove :buendchenlaenge
      t.remove :halbarmlangarm
      t.float :halsweite
      t.float :oberweite
      t.float :taillenweite
      t.float :rumpflaenge
      t.float :armellaenge
      t.float :schulterbreite
      t.float :rueckenbreite
      t.float :buendchenlaenge
      t.float :halbarmlangarm
		end
	end
end
