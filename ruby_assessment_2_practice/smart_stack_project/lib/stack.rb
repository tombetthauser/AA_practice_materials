
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


end