class CreateDams < ActiveRecord::Migration
  def change
    create_table :dams do |t|
      t.string :descricao
      t.integer :latitude
      t.integer :longitude
      t.integer :radius
      t.integer :basin_id

      t.timestamps
    end
  end
end
