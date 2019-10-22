require "byebug"

def select_even_nums(arr)
  arr.select(&:even?)
end

# 3min(didnt read rspec..), 17sec



def reject_puppies(arr)
  arr.reject { |hash| hash["age"] < 3 }
end

# 5min(super rusty..), 30sec



def count_positive_subarrays(arr)
  arr.count { |sub| sub.sum > 0 }
end

# 2min



def aba_translate(str)
  vowels = "aeiou"
  new_str = ""

  str.each_char do |char|
    if vowels.include?(char)
      new_str += char + "b" + char
    else
      new_str += char
    end
  end

  new_str
end

# 10min(super rusty)




def aba_array(words)
  words.map { |word| aba_translate(word) }
end

# 1min