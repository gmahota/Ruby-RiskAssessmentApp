class Alterdamcolmcolumn < ActiveRecord::Migration
  def up
  	change_column :dams, :latitude, :float
	change_column :dams, :longitude, :float
	change_column :dams, :radius, :float
	
  end

  def down
  end
end
