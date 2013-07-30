class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.date :from_date
      t.date :to_date
      t.time :from_time
      t.time :to_time

      t.timestamps
    end
  end
end
