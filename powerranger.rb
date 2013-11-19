module Fighting

	def strength_okay?
		if @strength<1
			return false 
		else
			return true
		end
	end
	def punch(other_person)
		if strength_okay?
			@strength > 5 ? power = 2 : power = 1
			@strength -= 2
			@caffeine_level -=2
			power.times do 
				other_person.scream
				other_person.run 
			end	

			"#{@name} punches #{other_person.name}"	
		else
			"#{@name} has no strength"
		end	
	end

	def rest
		@strength += 5
		"#{@name} rests"
	end

end


class Person
	attr_accessor :name, :caffeine_level

	def initialize(name)
		@name = name
		@caffeine_level = 10
	  "#{@name} is made."
	end

	def run
		if caffeine_okay?
			@caffeine_level -= 1
			"#{@name} runs"
		else
			"#{@name} cannot run. he has no energy"
		end		
	end

	def scream
		if caffeine_okay?
			@caffeine_level -= 1
			"#{@name} runs"
		else
			"#{@name} screams its caffeine_level #{@caffeine_level}"
		end	
	end

	def drink_coffee
		@caffeine_level += 2
		"person drinks coffee"
	end

	def caffeine_okay?
		if @caffeine_level<1
			return false 
		else
			return true
		end
	end

end

class PowerRanger < Person

	include Fighting

	attr_accessor :strength, :color

	def initialize(name, color)
		@name = "Power Ranger #{name}"
		@color = color
		@strength = 10
		@caffeine_level = 10
		"#{@name}, the #{color} ranger, is made."
	end

	def megazord(other_person)
		previous_strength=@strength
		@strength = 5000
		
		2.times do 
			punch(other_person) 
		end

		@strength = previous_strength
		"#{@name} uses megazord against #{other_person}"
	end


	#add the max strength and caffeine level they can have.
end

class EvilNinja < Person

	include Fighting

	attr_accessor :strength, :evilness

	def initialize(name)
		@name = "Evil Ninja #{name}"
		@strength = 10	
		@caffeine_level = 10
		@evilness = 10
		"#{@name} is made."
	end

	def cause_mayhem(other_person)
		other_person.caffeine_level = 0
		"#{@name} causes mayhem against #{other_person}"
	end

end



