class FixRelationships < ActiveRecord::Migration
  def up
    drop_table :impacts_periods
    remove_column :impacts, :classification_id
    remove_column :impacts,  :period_id
    
  end

  def down
  end
end
