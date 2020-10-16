
class Membership

  attr_reader :cost, :lifter, :gym
  @@all = []

#CLASS METHODS#

  def self.all
    @@all 
  end


#INSTANCE METHODS#

  def initialize(cost, lifter, gym)
    @lifter = lifter
    @gym = gym
    @cost = cost
    self.save
  end

  def save
    @@all << self
  end


end
