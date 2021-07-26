
def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end

def get_sum2(a,b)
  (a..b).reduce(:+) || (b..a).reduce(:+)
end

def get_sum3(a,b)
  Range.new(*[a, b].sort).reduce(:+)
end

def get_sum4(a,b)
  (a + b) / 2.0 * ((a - b).abs + 1)
end