class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :period_id
      t.integer :answer_type_id
      t.integer :impact_id

      t.timestamps
    end
  end
end
