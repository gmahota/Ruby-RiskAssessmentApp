class Impact < ActiveRecord::Base
  attr_accessible :name, :value, :answer_types_attributes
  
  has_many :answers
  has_many :answer_types
  has_many :periods, :through => :answers

  accepts_nested_attributes_for :answer_types
end
