class AddImageToType < ActiveRecord::Migration
  def self.up
    add_attachment :types, :avatar
  end

  def self.down
    remove_attachment :types, :avatar
  end
end
