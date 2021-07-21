def revrot(str, sz)
  # your code
  string = ''
  if sz <= 0 || str.empty? || sz > str.chars.length
    string = ''
  else
    ma = chunk_string(str, sz)
    ma.each{|x| ma.pop if x.length < sz}
    string = ma.map {|x| check_chunk(x)}.join
  end
end

def chunk_string(string, sz)
  string.chars.each_slice(sz).to_a
end

def sum_chunk(chunk)
  chunk.map {|x| x.to_i}.inject(:+) % 2
end

def check_chunk(chunk)
  (sum_chunk(chunk) == 0) ? chunk.reverse! : chunk.rotate!
end

# better solution
def revrot(str, sz)
  return '' if sz <= 0
  chunks = str.scan(/.{#{sz}}/)
  chunks.map do |chunk|
    digits = chunk.chars
    sum = digits.map {|x| x.to_i ** 3 }.inject(:+)
    sum.even? ? digits.reverse : digits.rotate
  end.join
end

def revrot(str, sz)
  str.scan(/.{#{sz}}/).map { |s| cubes_sum_even?(s.chars) }.join
end

def cubes_sum_even?(arr)
  arr.reduce(0) { |s, i| s += i.to_i**3}.even? ? arr.join.reverse! : arr.rotate!(1).join
end

