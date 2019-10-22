require "byebug"

def my_map(arr, &prc)
  arr.inject([]) { |acc, ele| acc << prc.call(ele) }
end

# ~1.5min

def my_select(arr, &prc)
  arr.inject([]) do |acc, ele| 
    if prc.call(ele) == true
      acc << ele 
    else
      acc
    end
  end
end

# ~5min(rusty on inject acc syntax..)

def my_count(arr, &prc)
  arr.inject(0) { |acc, ele| prc.call(ele) ? acc += 1 : acc }
end

# ~1min

def my_any?(arr, &prc)
  arr.inject(false) { |acc, el| prc.call(el) ? acc = true : acc }
end

# ~1.5min

def my_all?(arr, &prc)
  arr.inject(true) { |acc, ele| prc.call(ele) ? acc : acc = false }
end

# ~2min(trivial syntax mistakes..)

def my_none?(arr, &prc)
  arr.inject(true) { |acc, ele| prc.call(ele) ? acc = false : acc }
end

# ~1.5min(trivial boolean mistake..)

# Total Time: ~16min 