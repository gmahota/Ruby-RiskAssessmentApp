class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :name
      t.float :value
      t.integer :impact_id

      t.timestamps
    end
  end
end
