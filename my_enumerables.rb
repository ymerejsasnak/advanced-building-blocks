module Enumerable


	def my_each

    return self.to_enum unless block_given?

    for i in 0..(self.length - 1) do
      yield self[i]
    end

	end



  def my_each_with_index


  end



end