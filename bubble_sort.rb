def bubble_sort(array)
  
  0.upto(array.length - 2) do |count|
  	0.upto(array.length - 2 - count) do |index|
  		
  		if array[index] > array[index + 1]
  		  array[index], array[index + 1] = array[index + 1], array[index]
  		  
  		  #print as it occurs
  		  p array 

  	  end
    
    end
  end

  
end














#test
array = Array.new(10) {|x| x = rand(100)}

p array

bubble_sort(array)