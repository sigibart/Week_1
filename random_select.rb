=begin	
Create a method 'random_select' which, when given an array of elements (array)
and a number (n), returns n randomly selected elements from that array.	
=end

def random_select(array, n)  
  dest = []  
  max_num = array.length  
  for i in 1..n    
    result = array[rand(max_num-1)]
      dest << result    
  end
  return dest
end

p random_select([10,20,25], 2)