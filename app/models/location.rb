class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :radius
  has_many :risks

<<<<<<< HEAD
  #searchable do
  #  text :name
  #end
=======
>>>>>>> c2feadcacd799135798a59322c9d755fc83cfc7f
  
end
