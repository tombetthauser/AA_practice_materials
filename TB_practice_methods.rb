# Methods to Practice

def compress_str(str)
    compressed = ""
    i = 0
    while i < str.length
        char = str[i]
        count = 0
        while char == str[i]
            count += 1
            i += 1
        end
        compressed += count.to_s if count > 1
        compressed += char
    end
    compressed
end

# p compress_str("aaabbc")        # => "3a2bc"
# p compress_str("xxyyyyzz")      # => "2x4y2z"
# p compress_str("qqqqq")         # => "5q"
# p compress_str("mississippi")   # => "mi2si2si2pi"

# 6min, 3min, 2min




def bubble_sort(arr)
    sorted = false
    while sorted == false
        sorted = true
        (0...arr.length-1).each do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = false
            end
        end
    end
    arr
end

# p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
# p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]

# 6min, 3min, 2min





def peak_finder(arr)
    peaks = []
    (0..arr.length-1).each do |i|
        if i == 0
            peaks << arr[i] if arr[i] > arr[i+1]
        elsif i == arr.length-1
            peaks << arr[i] if arr[i] > arr[i-1]
        else
            peaks << arr[i] if arr[i] > arr[i+1] && arr[i] > arr[i-1]
        end
    end
    peaks
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]

# 5min, 3min, 5min




def my_rotate!(array, amt)

end


# array_1 = ["a", "b", "c", "d"]
# p array_1.object_id                 # => 70354216023780
# result_1 = my_rotate!(array_1, 2)
# p result_1                          # => ["c", "d", "a", "b"]
# p result_1.object_id                # => 70354216023780


# array_2 = ["NOMAD", "SOHO", "TRIBECA"]
# p array_2.object_id                 # => 70354216019660
# result_2 = my_rotate!(array_2, 1)
# p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
# p result_2.object_id                # => 70354216019660


# array_3 = ["a", "b", "c", "d"]
# p array_3.object_id                 # => 70354216016500
# result_3 = my_rotate!(array_3, -3)
# p result_3                          # => ["b", "c", "d", "a"]
# p result_3.object_id   





def hipsterfy(word)

end

#   hipsterfy
#     should accept a word as an arg
#     should return the word with it's last vowel (a, e, i, o, u) removed
#     should return the original word if it contains no vowels





def caesar_cipher(message, n)

end

# caesar_cipher
#     should accept a message and a number (n) as an arg
#     should return a new string where every letter of the message is shifted n 
#       positions in the alphabet
#     should not modify non-alphabetic characters





def partition(arr, n)

end

# partition
#     should accept an array and a number as args
#     should return a 2D array of length 2 where the first subarray contains 
#       elements less than the number arg and the second subarray contains elements 
#       greater than or equal to the number arg
#     should not use the built-in Array#partition





def merge(hash_1, hash_2)

end

#   merge
#     should accept two hashes as args
#     should return a new hash representing containing key-value from both hashes
#     should take the value from the second hash if the two hashes have duplicate keys
#     should not mutate the two input hashes





def censor(sentence, array)

end

#   censor
#     should accept a sentence and an array of curse words as args
#     should return the sentence where every curse word has it's vowels replaced with '*'





def power_of_two?(num)

end

#   power_of_two?
#     should accept a number as an arg
#     when the number is a power of two
#       should return true
#     when the number is not a power of two
#       should return false





def palindrome?(string)

end

# palindrome?
#     should accept a string as an arg
#     should not use String#reverse
#     when the string is the same forwards and backwards
#       should return true
#     when the string is not the same forwards and backwards
#       should return false





def substrings(string)

end

#   substrings
#     should accept a string as an arg
#     should return an array containing all substrings of the given string





def palindrome_substrings(string)

end

#   palindrome_substrings
#     should accept a string as an arg
#     should return an array containing all substrings that are palindromes and 
#       longer than 1 character
#     should call your previous 'palindrome?' method
#     should call your previous 'substrings' method




def is_prime?(num)

end

#   is_prime?
#     should accept a number as an arg
#     when the number can only be divided by 1 and itself
#       should return true
#     when the number can be divided by numbers other than 1 and itself
#       should return false
#     when the number is less than 2
#       should return false





def nth_prime(n)

end

def next_prime(num)

end

#   nth_prime
#     should accept a number, n, as an arg
#     should return the nth prime number sequentially





def prime_range(min, max)

end

#   prime_range
#     should accept two numbers, min and max, as args
#     should return an array of all prime numbers between min and max





def element_count(array)

end

#   element_count
#     should accept an array as an arg
#     should return a hash where each key is an element of the array and it's corresponding value is the number of times it appears in the array





def char_replace!(str, hash)

end

#   char_replace!
#     should accept a string and a hash as args
#     should mutate the original string by replacing chars of the string with their corresponding values in the hash, if the char is a key of the hash
#     should return the mutated string





def product_inject(arr)

end

#   product_inject
#     should accept an array of numbers as an arg
#     should return the total product of all elements multiplied together
#     should use Array#inject on the array to calculate the answer









# Solutions


# def compress_str(str)
#     compressed = ""
#     i = 0

#     while i < str.length
#         char = str[i]
#         count = 0

#         while char == str[i]
#             count += 1
#             i += 1
#         end

#         compressed += count.to_s if count > 1
#         compressed += char
#     end

#     compressed
# end



# def bubble_sort(arr)
#     sorted = false
#     until sorted
#         sorted = true
#         arr[0...-1].each_with_index do |ele, idx|
#             if arr[idx] > arr[idx+1]
#                 arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
#                 sorted = false
#             end
#         end
#     end
#     arr
# end



# def peak_finder(arr)
#     select_arr = []
#     arr.each_with_index do |ele, idx|
#         if idx == 0
#             select_arr << ele if ele > arr[idx+1]
#         elsif idx == arr.length-1
#             select_arr << ele if ele > arr[idx-1]
#         else
#             select_arr << ele if ele > arr[idx-1] && ele > arr[idx+1]
#         end
#     end
#     select_arr
# end



# def my_rotate!(array, amt)
#     if amt >= 0
#         (amt % array.length).times { array.push(array.shift) }
#     else
#         (amt.abs % array.length).times { array.unshift(array.pop) }
#     end
#     array
# end



# def hipsterfy(word)
#     vowels = "aeiou"
#     idx = nil
#     i = 0

#     while i < word.length
#         idx = i if vowels.include?(word[i])
#         i += 1
#     end

#     idx.nil? ? word : (word[0...idx] + word[(idx+1)..-1])
# end



# def caesar_cipher(message, n)
#     alpha = ("a".."z").to_a
#     max_idx = alpha.length
#     new_message = ""

#     message.each_char do |char|
#         if alpha.include?(char)
#             old_idx = alpha.index(char)
#             new_message += alpha[(old_idx + n) % max_idx]
#         else
#             new_message += char
#         end
#     end

#     new_message
# end



# def partition(arr, n)
#     left, right = [], []
#     arr.each { |el| el < n ? left << el : right << el }
#     [left, right]
# end



# def merge(hash_1, hash_2)
#     hash_3 = {}
#     hash_1.each { |k,v| hash_3[k] = v }
#     hash_2.each { |k,v| hash_3[k] = v }
#     hash_3
# end



# def censor(sentence, array)
#     censored = []

#     sentence.split(" ").each do |word|
#         if array.include?(word.downcase)
#             censored << star(word)
#         else
#             censored << word
#         end
#     end

#     censored.join(" ")
# end



# def star(word)
#     vowels = "aeiou"
#     starred = ""
#     word.each_char do |char| 
#         if vowels.include?(char.downcase)
#             starred += "*"
#         else
#             starred += char
#         end
#     end
#     starred
# end



# def power_of_two?(num)
#     if num == 2 || num == 1
#         return true
#     elsif num < 2
#         return false
#     end
    
#     power_of_two?(num / 2.0)
# end



# def palindrome?(string)
#     reversed = ""
#     i = string.length - 1

#     while i >= 0
#         reversed += string[i]
#         i -= 1
#     end

#     string == reversed
# end



# def substrings(string)
#     array = []
    
#     (0...string.length).each do |idx_1|
#         (idx_1...string.length).each do |idx_2|
#             array << string[idx_1..idx_2]
#             idx_2 += 1
#         end
#         idx_1 += 1
#     end

#     array
# end



# def palindrome_substrings(string)
#     substrings(string).select do |word| 
#         palindrome?(word) && word.length > 1
#     end
# end



# def is_prime?(num)
#     return false if num < 2
#     (2...num).each { |factor| return false if num % factor == 0 }
#     true
# end

# def nth_prime(n)
#     primes = [2]

#     while primes.length < n
#         primes << next_prime(primes.last)
#     end

#     primes.last
# end

# def next_prime(num)
#     (num+1...num**2).each do |num|
#         return num if is_prime?(num)
#     end
# end

# def prime_range(min, max)
#     arr = [min]
#     unless is_prime?(min) 
#         arr[0] = next_prime(min)
#     end

#     while arr[-1] < max
#         arr << next_prime(arr.last)
#     end

#     arr.pop if arr.last > max
#     arr
# end