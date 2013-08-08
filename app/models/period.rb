class Period < ActiveRecord::Base
  attr_accessible :from_date, :from_time, :to_date, :to_time, :probability_id
  belongs_to :risk
  belongs_to :probability
  
  has_many :answers
  has_many :impacts, :through => :answers
 
  
  def self.get_risks(i,j)
    
    @periods = Period.all.select{ |p| p.probability.id == i and  
      Answer.all.select{ |a| a.period.id == p.id and a.value==j}.count > 0}

    
   
    
    #@periods = Period.fin
    
    #@answers = Answer.where(:value => i)
    #@probabilities = Probability.where(:value => j)
    
  end
  
end
