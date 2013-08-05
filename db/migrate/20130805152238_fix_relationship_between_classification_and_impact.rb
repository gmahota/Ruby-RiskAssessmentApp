class FixRelationshipBetweenClassificationAndImpact < ActiveRecord::Migration
  def up
    remove_column :classifications, :impact_id
    remove_column :classifications, :value
    add_column :impacts, :classification_id, :Integer
  end

  def down
  end
end
