=begin
class Rectangle
	def initialize (length, breath)
		@length = length
		@breath = breath
	end

	def perimeter
		2 * (@length + @breath)		
	end
end
=end

def add(*numbers)
  numbers.inject(0) {|sum, number| sum + number}
end

def add_with_message(message, *numbers)
  "#{message} : #{add(*numbers)}"
end

puts add_with_message("The Sum is", 1, 2, 3)

#------
def introduction (age, gender, *names)
  "Meet #{names.join(" ")}, who's #{age} and #{gender}"
end
puts introduction(28, "Male", "Sidu", "Ponnappa", "Chonira")

#-----------------
def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)


#-------
def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
 
 l = lambda {"aa bb cc"}
 p l.call