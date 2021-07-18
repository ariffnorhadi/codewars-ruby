ALPHA = ('a'..'z')
def pangram?(string)
  # enter your code here
  string.downcase!
  ALPHA.all? { |letter|  string.include?(letter) }
end

# another solution
def panagram?(string)
  ('a'..'z').all? { |x| string.downcase.include? (x) }
end

# another solution
def panagram?(string)
  string.downcase.scan(/[a-z]/).uniq.size == 26
end

def panagram?(string)
  lets = Set.new(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
  string.downcase.each_char { |ch| lets.delete(ch) if lets.include?(ch) }
  lets.empty?
end

