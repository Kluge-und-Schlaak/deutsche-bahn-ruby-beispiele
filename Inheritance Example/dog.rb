require './models/animal'

class Dog < Animal

	attr_accessor :color, :race

	def initialize(color, race, size)
		@color = color
		@size = size
		@race = race
	end

	def bark
		open_mouth
		make_noise
	end

	private

	def open_mouth
		'open mounth'
	end

	def make_noise
		'open mounth'
	end


end

lottie = Dog.new('white', 'beagle', 50)
lassie = Dog.new('brown', 'collie', 80)
# ruprecht = Dog.new

lottie.eat
