
class Stack

  def initialize()
    @underlying_array = []
  end

  def size
    @underlying_array.count
  end

  def empty?
    @underlying_array.count == 0
  end

  def top
    @underlying_array[-1]
  end

  def peek(n = nil)
    n ||= 1

    if n >= @underlying_array.length
      popped = @underlying_array
      nils_arr = Array.new(n - @underlying_array.length, nil) 
      return popped.reverse + nils_arr
    end

    n *= -1
    popped = @underlying_array[n..-1]
    popped.reverse
  end

  def push(item)
    @underlying_array << item
    @underlying_array.count
  end

  def pop(n = nil)
    return nil if @underlying_array.empty?
    @underlying_array.pop
  end

end