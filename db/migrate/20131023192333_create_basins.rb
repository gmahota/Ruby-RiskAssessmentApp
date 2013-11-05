class CreateBasins < ActiveRecord::Migration
  def change
    create_table :basins do |t|
      t.string :name
      t.text :description
      t.string :obs

      t.timestamps
    end
  end
end
