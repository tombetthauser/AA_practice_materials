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

    def pop(n = nil)
      n ||= 1

      if n >= @underlying_array.length
        popped = @underlying_array
        nils_arr = Array.new(n - @underlying_array.length, nil) 
        @underlying_array = []
        return popped.reverse + nils_arr
      end

      n *= -1
      popped = @underlying_array[n..-1]
      @underlying_array = @underlying_array[0...n]
      popped.reverse
    end

end


# finished in 1+ hour (10.28), 