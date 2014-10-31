module Enumerable


	def my_each

    return self.to_enum(:my_each) unless block_given?

    for i in 0..(self.size - 1) do
      yield self[i]
    end

    return self

	end



  def my_each_with_index
    
    return self.to_enum(:my_each_with_index) unless block_given?

    for i in 0..(self.size - 1) do
    	yield self[i], i
    end

    return self

  end



end