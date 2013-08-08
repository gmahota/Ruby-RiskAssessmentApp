class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :radius
  has_many :risks

  
end
