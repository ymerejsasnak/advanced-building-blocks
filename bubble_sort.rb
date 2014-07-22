def bubble_sort(array)
  
  0.upto(array.length - 2) do |count|  #keeps track of end so it does one less element each time through (since that will be highest number)
    array.each_with_index do |value,index|
      break if index + 1 > array.length - 1 - count #if at end break loop and start at beginning again (next highest number has bubbled up)
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end  
    end
  end  

  return array
end









#test

test = Array.new(20) {|x| rand(50)}

puts
puts "Original:"
p test
puts
puts "Sorted:"
p bubble_sort(test)
puts
