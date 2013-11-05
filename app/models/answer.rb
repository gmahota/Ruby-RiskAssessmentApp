class Answer < ActiveRecord::Base
  attr_accessible :answer_type_id, :impact_id, :period_id, :value
  belongs_to :period
  belongs_to :impact
end
