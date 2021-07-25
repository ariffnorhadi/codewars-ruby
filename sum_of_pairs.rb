def sum_pairs(ints, s)
  result = []
  new_ints = []

  ints_hash = Hash.new {|value,key| value[key]=0}
  ints.each do |x|
    ints_hash[x] += 1
    if ints_hash[x] < 3
      new_ints << x
    end
  end

  new_ints.each_with_index do |x,i|
    (i+1).upto(new_ints.length-1) do |a|
      if x + new_ints[a] == s
        result << [x, new_ints[a]]
      end
    end
  end
  result != [] ? result.sort[0] : nil
end

# better solution
def sum_pairs(ints, s)
  seen = {}
  for i in ints do
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end

require 'set'
def sum_pairs(ints, s)
  seen = Set.new
  ints.each { |v|
    return [s - v, v] if seen.include?(s - v)
    seen << v
  }
  nil
end

def sum_pairs(ints, s)
  passed = Set.new
  ints.each {|int| passed.include?(s - int) ? (return [s - int, int]) : passed.add(int) }
  nil
end

