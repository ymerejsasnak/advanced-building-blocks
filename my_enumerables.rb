module Enumerable


  def my_each

    return self.to_enum(:my_each) unless block_given?

    for element in self do
      yield element
    end

  end



  def my_each_with_index
    
    return self.to_enum(:my_each_with_index) unless block_given?

    for index in 0..(self.size - 1) do
    	yield self.to_a[index], index
    end

    return self

  end



  def my_select

  	return self.to_enum(:my_select) unless block_given?

    selected = []

    for element in self do

    	if yield element
    	  selected << element
    	end

    end
    
    if self.is_a?(Hash)
      selected = Hash[selected]
    end

    return selected

  end



  def my_all?

  	return self.to_enum(:my_all?) unless block_given?

    for element in self do
      
      unless yield element
      	return false
      end

    end

    return true

  end



  def my_any?

  	return self.to_enum(:my_any?) unless block_given?

  	for element in self do

  		if yield element
  			return true
  		end

  	end

    return false

  end



  def my_none?

  	return self.to_enum(:my_none?) unless block_given?

  	for element in self do
    
      if yield element
      	return false
      end

  	end

    return true

  end



  def my_count

  	return self.size unless block_given?

  	count = 0

  	for element in self do

  		if yield element
  			count += 1
  		end

  	end

  	return count

  end



  def my_map

    return self.to_enum(:my_map) unless block_given?

    return_array = []

    for index in 0..(self.size - 1) do
      return_array[index] = yield self.to_a[index]
    end

    return return_array
    
  end



  def my_inject(initial_value = self.to_a[0])
    
    initial_value == self.to_a[0] ? start_index = 1 : start_index = 0
    result = initial_value

    for index in start_index..(self.size - 1) do
      result = yield(result, self.to_a[index])
    end

    return result

  end

end


#test method for my_inject
def multiply_els(array)
  array.my_inject {|result, x| result * x}
end