class AddAtachmentToRisk < ActiveRecord::Migration
  def self.up
    add_attachment :risks, :doc
  end

  def self.down
    remove_attachment :risks, :doc
  end
end
