class CreateBacia < ActiveRecord::Migration
  def change
    create_table :bacia do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
