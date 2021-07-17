def duplicate_encode(word)
  result = ""
  new_hash = Hash.new {|d,k| d[k] = 0}
  letters = word.split("")
  letters.each {|x| new_hash[x.downcase] += 1}
  letters.each {|x| result += new_hash[x.downcase] == 1 ? "(" : ")"}

  result
end

# Better solution

def duplicate_encode(word)
  word
    .downcase
    .chars
    .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
    .join
end

