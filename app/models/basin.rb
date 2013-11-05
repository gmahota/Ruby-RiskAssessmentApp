class Basin < ActiveRecord::Base
  attr_accessible :description, :name, :obs
  has_many :dams
end
