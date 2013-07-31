class Risk < ActiveRecord::Base
  attr_accessible :description, :from_date, :from_time, :location_id, :to_date, :to_time, :type_id, :periods_attributes,:doc

  belongs_to :location
  belongs_to :type
  has_many :periods
  
  accepts_nested_attributes_for :periods
  
  
  has_attached_file :doc
  
  searchable do
    text :description
    
    text :periods do
      periods.map(&:content)
    end
    
    
    text :location do
      location.name.downcase if location = self.location
    end
    
    
  end
  
end
