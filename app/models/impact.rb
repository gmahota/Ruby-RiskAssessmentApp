class Impact < ActiveRecord::Base
  attr_accessible :name, :value
  has_many :periods
  belongs_to :classification
end
