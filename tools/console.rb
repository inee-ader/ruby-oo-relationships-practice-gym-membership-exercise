
require_relative '../config/environment.rb'

l1 = Lifter.new("Brogg", 267)
l2 = Lifter.new("Turre", 341)
l3 = Lifter.new("Raghoc", 233)
l4 = Lifter.new("Hunnop", 288)
l5 = Lifter.new("Fradnor", 263)

g1 = Gym.new("Turnpike")
g2 = Gym.new("Bronco")
g3 = Gym.new("Better Lyft")
g4 = Gym.new("Query Selector")
g5 = Gym.new("Fuzzy Whiskers")

Membership.new(55, l2, g1)
Membership.new(60, l2, g2)
Membership.new(125, l5, g4)
Membership.new(100, l1, g1)
Membership.new(45, l3, g5)
Membership.new(50, l4, g3)
Membership.new(35, l5, g2)





binding.pry

puts "Gains!"
