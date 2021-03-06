def bubble_sort_by(array)
  
  0.upto(array.length - 2) do |count|
  	0.upto(array.length - 2 - count) do |index|
  		
      var = yield array[index], array[index + 1]
  		if var > 0
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

puts "(reverse)"
bubble_sort_by(array) do |left, right|
  right - left
end

p array

puts "(forward)"
bubble_sort_by(array) do |left, right|
  left - right
end

p array


puts "string array test:"

array = ["hi", "hello", "hey"]

bubble_sort_by(array) do |left,right|
  right.length - left.length
end

p array

bubble_sort_by(array) do |left,right|
  left.length - right.length
end

p array

puts