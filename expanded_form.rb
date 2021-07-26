def expanded_form(num)
  num.digits.each_with_index.map{| val, idx | val * (10 ** idx)}.select{|x| x != 0}.reverse.join(" + ")
end

# better solution

def expanded_form2(num)
  num.to_s
     .chars
     .reverse
     .map.with_index { |d, idx| d.to_i * 10**idx }
     .reject(&:zero?)
     .reverse
     .join (' + ')
end

def expanded_form3(num)
  num.to_s.chars.reverse.map.with_index{|i,j| i == "0" ? nil : i + "0" * j }.compact.reverse.join(" + ")
end