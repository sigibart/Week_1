#Compute the sum of cubes for a given range a through b

def sum_of_cubes(a, b)
	sum = 0
	for i in a..b
		sum += (i ** 3)
	end
	return sum
end

p sum_of_cubes(3,5)
