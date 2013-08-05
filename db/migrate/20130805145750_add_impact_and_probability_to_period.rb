class AddImpactAndProbabilityToPeriod < ActiveRecord::Migration
  def change
    add_column :periods, :impact_id, :Integer
    add_column :periods, :probability_id, :Integer
  end
end
