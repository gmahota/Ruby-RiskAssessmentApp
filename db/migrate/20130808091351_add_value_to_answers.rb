class AddValueToAnswers < ActiveRecord::Migration
  def change
  	add_column :answers, :value, :Integer
  end
end
