def reverser(str, &prc)
  new_str = ""

  i = str.length - 1
  while i >= 0
    new_str += str[i]
    i -= 1
  end

  prc.call(new_str)
end

# ~3.5min(trivial mistakes)

def word_changer(str, &prc)
  str.split(" ").map { |wrd| prc.call(wrd) }.join(" ")
end

# ~4min("&:prc.call" doesn't work..)

def greater_proc_value(num, prc1, prc2)
  val1 = prc1.call(num)
  val2 = prc2.call(num)
  val1 > val2 ? val1 : val2
end

# ~4min(rusty on &prc vs prc syntax)

def and_selector(arr, prc1, prc2)
  arr.select { |ele| prc1.call(ele) && prc2.call(ele) }
end

# ~1.5min

def alternating_mapper(arr, prc1, prc2)
  arr.map.with_index { |ele, idx| idx.even? ? prc1.call(ele) : prc2.call(ele) }
end

# ~2min

# Total Time: ~16min