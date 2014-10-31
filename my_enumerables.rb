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

    selected = []

    for i in 0..(self.to_a.size - 1) do

    	if yield self.to_a[i]
    	  selected << self.to_a[i]
    	end

    end
    
    return selected

  end



  def my_all?

  	return self.to_enum(:my_all?) unless block_given?

    for i in 0..(self.to_a.size - 1) do
      
      unless yield self.to_a[i]
      	return false
      end

    end

    return true

  end



  def my_any?

  	return self.to_enum(:my_any?) unless block_given?

  	for i in 0..(self.to_a.size - 1) do

  		if yield self.to_a[i]
  			return true
  		end

  	end

    return false

  end



  def my_none?

  	return self.to_enum(:my_none?) unless block_given?

  	for i in 0..(self.to_a.size - 1) do
    
      if yield self.to_a[i]
      	return false
      end

  	end

    return true

  end



  def my_count

  	return self.size unless block_given?

  	count = 0

  	for i in 0..(self.to_a.size - 1) do

  		if yield self.to_a[i]
  			count += 1
  		end

  	end

  	return count

  end







end