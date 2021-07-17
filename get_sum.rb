
def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end

def get_sum(a,b)
  (a..b).reduce(:+) || (b..a).reduce(:+)
end

def get_sum(a,b)
  Range.new(*[a, b].sort).reduce(:+)
end

def get_sum(a,b)
  (a + b) / 2.0 * ((a - b).abs + 1)
end