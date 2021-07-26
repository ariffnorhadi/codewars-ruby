def gap(g, m, n)
  (m..n).each do |i|
    next unless is_prime(i)
    return [i, i+g] if is_prime(i+g) && (i+1..i+g-1).none? { |num| is_prime num }
  end
  nil
end

def is_prime(n)
  (2..Math.sqrt(n).round).each { |i| return false if n % i == 0 }
  true
end

# another solution
require 'prime'

def gap2(gap, low, high)
  primes_between(low,high).each_cons(2).find { |(a,b)| b-a == gap }
end

def primes_between(low,high)
  Prime.each(high).select { |prime| prime >= low }
end

