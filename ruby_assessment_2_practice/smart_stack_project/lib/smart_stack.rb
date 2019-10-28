class SmartStack < Stack

    attr_reader :max_size

    def initialize(num)
      @max_size = num
      @underlying_array = []
    end

    def full?
      @underlying_array.count >= @max_size
    end

    def push(*nums)
      if nums.count + @underlying_array.count > @max_size
        raise "stack is full" 
      else
        nums.each { |num| @underlying_array << num }
        @underlying_array.count
      end
    end



end


# finished in 1+ hour (10.28), 