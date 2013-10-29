class Dam < ActiveRecord::Base
  attr_accessible :basin_id, :descricao, :latitude, :longitude, :radius
  belongs_to :basin
end
