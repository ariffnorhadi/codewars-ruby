def longest_consec(strarr, k)
  return "" unless k.between?(1, strarr.size)
  return strarr.each_cons(k).map(&:join).max_by(&:size)
end

def longest_consec2(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end

def longest_consec3(strarr, k)
  k > strarr.size || k <= 0 ? '' : strarr.each_cons(k).map(&:join).max_by(&:size)
end

def longest_consec4(strarr, k)
  return "" if strarr.length == 0 || k > strarr.length || k <= 0

  longest_string = ""
  strarr.each_index do |i|
    str = strarr[i...i+k].join
    longest_string = str if str.length > longest_string.length
  end
  longest_string
end