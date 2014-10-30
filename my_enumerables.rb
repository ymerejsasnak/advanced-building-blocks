module Enumerable

	def my_each

    return self unless block_given?
    counter = 0
    0.upto(self.size - 1) do
      
    	yield(self[counter])
      counter += 1
    
    end

	end




end