class RemovePeriodAndImpactOneToManyRelationship < ActiveRecord::Migration
  def up
    
    remove_column :periods, :impact_id
  end

  def down

  end
end
