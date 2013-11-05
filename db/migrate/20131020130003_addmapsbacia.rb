class Addmapsbacia < ActiveRecord::Migration
  def up
  	add_column :bacia, :latitude,  :float #you can change the name, see wiki
	add_column :bacia, :longitude, :float #you can change the name, see wiki
	add_column :bacia, :gmaps, :boolean #not mandatory, see wiki
  end

  def down
  end
end
