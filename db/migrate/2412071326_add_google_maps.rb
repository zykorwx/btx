class AddGoogleMaps < ActiveRecord::Migration
  def self.up
    change_table :direccionusuarios do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.integer :population
    end
  end

end
