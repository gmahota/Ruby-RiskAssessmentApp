class CreateProbabilities < ActiveRecord::Migration
  def change
    create_table :probabilities do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
