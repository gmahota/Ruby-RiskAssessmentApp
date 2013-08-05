class Probability < ActiveRecord::Base
  attr_accessible :name, :value
  has_many :periods
end
