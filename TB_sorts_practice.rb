

def merge_sort(arr)
  return arr if arr.length < 2

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  merge(left, right)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?

  if left[0] < right[0]
    [left[0]] + merge(left[1..-1], right)
  else
    [right[0]] + merge(left, right[1..-1])
  end
end

# 7min, 7min, 4min, 4min(after hour+ break)

# arr = Array.new(20) { rand(100) }
# p merge_sort(arr)






def quick_sort(arr)
  return [] if arr.empty?
  return arr if arr.length < 2

  pivot = arr.pop
  left = arr.select { |num| num <= pivot }
  right = arr.select { |num| num > pivot }

  quick_sort(left) + [pivot] + quick_sort(right)

end






arr = Array.new(10) { rand(10) }
p quick_sort(arr)
