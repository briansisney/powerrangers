require_relative "powerranger.rb"

puts "-----------"
person1 = Person.new("Person One")
person2 = Person.new("Person Two")
brian_w = PowerRanger.new("Brian","white")
brian_g = PowerRanger.new("Brian","green")
ninja1 = EvilNinja.new("ninja One")
ninja2 = EvilNinja.new("ninja Two")
puts "-----------"


p person1.run
p person2.scream
p brian_w.drink_coffee
p brian_g.run
p ninja1.scream
p ninja2.run


p person1.caffeine_level
p person2.caffeine_level
p brian_w.caffeine_level
p brian_g.caffeine_level
p ninja1.caffeine_level
p ninja2.caffeine_level

puts "9,9,12,9,9,9"
puts "-----------"

p person1.run
p person2.scream
p brian_w.punch(person1)
p brian_g.rest
p ninja1.punch(person2)
p ninja2.rest

p person1.caffeine_level
p person2.caffeine_level
p brian_w.caffeine_level
p brian_g.caffeine_level
p ninja1.caffeine_level
p ninja2.caffeine_level
puts "-"
p brian_w.strength
p brian_g.strength
p ninja1.strength
p ninja2.strength
puts "4,4,10,9,7,9-8,15,8,15"
puts "-----------"
p person1.drink_coffee
p person2.drink_coffee
p brian_w.megazord(ninja2)
p brian_g.punch(ninja1)
p ninja1.cause_mayhem(person1)
p ninja2.scream

p person1.caffeine_level
p person2.caffeine_level
p brian_w.caffeine_level
p brian_g.caffeine_level
p ninja1.caffeine_level
p ninja2.caffeine_level
puts "-"
p brian_w.strength
p brian_g.strength
p ninja1.strength
p ninja2.strength

puts "0,6,8,7,3,0-8,15,6,15"
puts "-----------"


