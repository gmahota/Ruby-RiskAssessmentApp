class AddCollumnPeriodidOnRisks < ActiveRecord::Migration
  def up
    add_column :risks, :period_id, :Integer
  end

  def down
  end
end
