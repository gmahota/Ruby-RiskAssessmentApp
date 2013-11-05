class Risk < ActiveRecord::Base
  attr_accessible :description, :from_date, :from_time, :location_id, :to_date, :to_time, :type_id, :periods_attributes,:doc

  belongs_to :location
  belongs_to :type
  has_many :periods
  
  
  accepts_nested_attributes_for :periods
  
  
  has_attached_file :doc
  
<<<<<<< HEAD
  #searchable do
  #  text :description
    
    #text :periods do
    #  periods.map(:risks)
   # end
    
    
  #  text :location do
  #    location.name.downcase if location = self.location
  #  end
    
    
  #end
  
  
=======
    
>>>>>>> c2feadcacd799135798a59322c9d755fc83cfc7f
   self.per_page = 3

  def self.search(description, type_id, loc_id)
    if description
      self.search_description(description)
    elsif type_id
      self.search_type(type_id)
    elsif loc_id
      self.search_location(loc_id)
    else
      self.where(nil)
    end
  end

  def self.search_description(search_term)
    if search_term.blank?
      self.where(nil)
    else
      self.where("description LIKE ?", "%#{search_term}%")
    end
  end

  def self.search_location(location_id)
    if location_id
      self.where(:location_id => location_id)
    else
      self.where(nil)
    end
  end

  def self.search_type(type_id)
    if type_id
      self.where(:type_id => type_id)
    else
      self.where(nil)
    end
  end
  
end
