
def filter_list(l)
  result = []
  l.map {|x| result << x.to_i if x.is_a? Integer}
  result
end

# Better Solution
def filter_list(l)
  l.reject { |x| x.is_a? String }
end

# Another Solution
def filter_list(l)
  l.select{|i| i.is_a?(Integer)}
end