class Risk < ActiveRecord::Base
  attr_accessible :description, :from_date, :from_time, :location_id, :to_date, :to_time, :type_id, :periods_attributes

  belongs_to :location
  belongs_to :type
  has_many :periods
  
  accepts_nested_attributes_for :periods
end
