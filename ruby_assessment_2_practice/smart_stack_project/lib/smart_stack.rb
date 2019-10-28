class SmartStack < Stack

    attr_reader :max_size

    def initialize(num)
      @max_size = num
      @underlying_array = []
    end

  end


# finished in 1+ hour (10.28), 