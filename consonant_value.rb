def solve(s)
  s.split(/[aeiou]/).map{|x| x.sum - x.size * 96}.max
end

def solve2(str)
  str
    .scan(/[^aeiou]+/)
    .map { |c| c.chars.map(&:ord).sum - (96 * c.size) }
    .max
end