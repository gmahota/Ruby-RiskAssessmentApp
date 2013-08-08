class JoinPeriodAndImpactsManytoMany < ActiveRecord::Migration
  def up
     create_table 'impacts_periods', :id => false do |t|
      t.column :impact_id, :integer
      t.column :period_id, :integer
    end
  end

  def down
  end
end
