def find_length(my_array)

	my_array.map{|i| i.length}

end

a = ["a", "  " ,"..."]
puts find_length(a)