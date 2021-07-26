def persistence(n)
  k = 0
  while n > 9 do
    n = n.to_s.split(//).map { |x| x.to_i }.inject(:*)
    k+=1
  end
  k
end

# better solution
def persistence2(n)
  n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
end

def persistence3(n)
  return 0 if n < 10
  1 + persistence(n.digits.reduce(&:*))
end