class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :producer
      t.string :colour
      t.integer :size

      t.timestamps
    end
  end
end
