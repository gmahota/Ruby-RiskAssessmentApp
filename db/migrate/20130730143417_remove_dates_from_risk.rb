class RemoveDatesFromRisk < ActiveRecord::Migration
  def up
    remove_column :risks, :from_date, :to_date, :from_time, :to_time
    
  end

  def down
  end
end
