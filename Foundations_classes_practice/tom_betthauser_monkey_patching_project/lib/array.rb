# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
  def span
    count > 0 ? max - min : nil
  end

  def average
    count > 0 ? sum / length.to_f : nil
  end

  def median
    return nil if count < 1
    if count.odd?
      self.sort[count/2]
    else
      (self.sort[(count/2)-1] + self.sort[count/2]) / 2.to_f
    end
  end

  def counts
    hash = Hash.new(0)
    each { |el| hash[el] += 1 }
    hash
  end

  def my_count(val)
    inject(0) { |acc, el| el == val ? acc += 1 : acc }
  end

  def my_index(val)
    (0..length).each { |idx| return idx if self[idx] == val }
    nil
  end

  def my_uniq
    inject([]) { |acc, el| acc.include?(el) ? acc : acc << el }
  end

  def my_transpose
    arr = []
    (0...length).each do |idx_1|
      sub = []
      (0...length).each do |idx_2|
        sub << self[idx_2][idx_1]
      end
      arr << sub
    end
    arr
  end
end
