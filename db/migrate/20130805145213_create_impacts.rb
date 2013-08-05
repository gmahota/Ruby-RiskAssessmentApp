class CreateImpacts < ActiveRecord::Migration
  def change
    create_table :impacts do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
