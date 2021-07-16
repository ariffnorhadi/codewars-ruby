num = 8_098_423_094

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

puts descending_order(num)