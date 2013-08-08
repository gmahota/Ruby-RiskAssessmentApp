class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.string :name
      t.integer :value
      t.integer :impact_id

      t.timestamps
    end
  end
end
