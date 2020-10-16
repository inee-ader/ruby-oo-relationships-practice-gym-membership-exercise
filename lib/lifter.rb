
class Lifter

  @@all = []
  attr_reader :name, :lift_total

#CLASS METHODS#
  def self.all
    @@all 
  end

  def self.avg_lift_totals
    wt = []
    @@all.each do |lifter|
      wt << lifter.lift_total
    end
    (wt.sum) / (wt.length)
  end
#INSTANCE METHODS#

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.save
  end

  def save
    @@all << self
  end

  def mem
    Membership.all.select do |mem|
      mem.lifter == self
    end
  end

  def gym
    gyms = []
    Membership.all.map do |mem|
      if mem.lifter == self
       gyms << mem.gym
      end
    end
    gyms
  end

  def total_cost
    cost = []
    Membership.all.select do |mem|
      if mem.lifter == self
        cost << mem.cost
      end
    end
    cost.sum
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

  

end
