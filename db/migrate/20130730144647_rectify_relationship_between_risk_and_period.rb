class RectifyRelationshipBetweenRiskAndPeriod < ActiveRecord::Migration
  def up
    remove_column :risks, :period_id
    add_column :periods, :risk_id, :Integer
    
  end

  def down
  end
end
