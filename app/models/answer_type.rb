class AnswerType < ActiveRecord::Base
  attr_accessible :impact_id, :name, :value
  
  belongs_to :impact
end
