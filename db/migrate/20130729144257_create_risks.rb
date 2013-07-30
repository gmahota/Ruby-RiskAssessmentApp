class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :description
      t.integer :location_id
      t.integer :type_id
      t.date :from_date
      t.date :to_date
      t.time :from_time
      t.time :to_time

      t.timestamps
    end
  end
end
