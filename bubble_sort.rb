def bubble_sort(array)
  
  0.upto(array.length - 2) do |count|
  	0.upto(array.length - 2 - count) do |index|
  		
  		if array[index] > array[index + 1]
  		  array[index], array[index + 1] = array[index + 1], array[index]
  		  
  		end
    
    end
  end

  return array
end














#test
array = Array.new(20) {|x| x = rand(100)}

puts
puts "Unsorted:"
p array
puts
puts "Sorted:"
p bubble_sort(array)
puts
puts