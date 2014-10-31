module Enumerable


	def my_each

    return self.to_enum(:my_each) unless block_given?

    for i in 0..(self.to_a.size - 1) do
      yield self.to_a[i]
    end

    return self

	end



  def my_each_with_index
    
    return self.to_enum(:my_each_with_index) unless block_given?

    for i in 0..(self.to_a.size - 1) do
    	yield self.to_a[i], i
    end

    return self

  end



  def my_select

  	return self.to_enum(:my_select) unless block_given?

    result = []

    for i in 0..(self.size - 1) do

    	if yield self[i]
    	  result << self[i]
    	end

    end
    
    return result

  end



end