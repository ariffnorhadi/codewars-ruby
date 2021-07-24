def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "
    result << str[0...idx] + char.upcase + str[idx+1..-1]
  end
  result
end

def wave(str)
  wave = []
  for i in 0...str.length
    word = str.downcase
    word[i] = word[i].upcase
    wave << word if word[i].match(/[A-Za-z]/)
  end
  wave
end

def wave(str)
  res = []
  str.size.times do |idx|
    next if str[idx] == ' '
    res << str.dup
    res[-1][idx] = res[-1][idx].upcase
  end
  res
end

def wave s
  s.size.times.map{|i| s[0...i] + s[i].upcase + s[i+1..-1]} - [s]
end