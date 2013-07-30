class Period < ActiveRecord::Base
  attr_accessible :from_date, :from_time, :to_date, :to_time
  belongs_to :risk
end
