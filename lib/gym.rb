
class Gym

  attr_reader :name
  @@all = []

#CLASS METHODS#

  def self.all
    @@all 
  end


#INSTANCE METHODS#

  def initialize(name)
    @name = name
    self.save
  end

  def save
    @@all << self
  end

  def memberships
    Membership.all.select do |mem|
      mem if mem.gym == self
    end
  end

  def lifters
    people = []
    Membership.all.select do |mem|
      if mem.gym == self
        people << mem.lifter
      end
    end
    people
  end

  def lifter_names
    names = []
    self.lifters.each do |lifter|
      names << lifter.name
    end
    names
  end

  def member_lifts
    weight = []
    self.lifters.each do |lifter|
      weight << lifter.lift_total
    end
    weight
  end

end
