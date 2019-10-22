def all_words_capitalized?(array)
  array.all? { |word| word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase }
end

# 3min(didnt read rspecs..)

def no_valid_url?(arr)
  ends = ['com', 'net', 'io', 'org']
  arr.none? { |url| ends.include?(url.split(".")[-1]) }
end

# ~2min

def any_passing_students?(arr)
  arr.any? { |hash| hash[:grades].sum.fdiv(2) >= 75 }
end

# ~2min

# Total Time: ~9min