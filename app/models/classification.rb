class Classification < ActiveRecord::Base
  attr_accessible :impact_id, :name, :value
  has_many :impacts
end
