def number_shuffle(number)
  n = -1  
  my_array = []  
  my_array1 = []  
  elements = 1
  
  number_length = number.to_s.length
  number_length.times do  
  my_array << number.to_s.slice(n+=1)  
  end
  (1..number_length).each do |i|
  	elements *= i
  end
  
  while my_array1.length < elements do
  	new_member = my_array.shuffle.join  	  	  	  		
  		if !my_array1.include?(new_member)   			
  			my_array1 << new_member.to_i  	  		
  			my_array1.uniq!
  		end
  end
  	p my_array1.sort
  
end

number_shuffle (123)