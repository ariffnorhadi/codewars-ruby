
def dashatize(number)
  if number.is_a? Integer
    number.to_s
          .gsub(/[13579]/, '-\\0-')
          .gsub('--','-')
          .delete_suffix('-')
          .delete_prefix('-')
  else
    return "nil"
  end
end

# better solution
def dashatize(num)
  num ? num.to_s.scan(/[02468]+|[13579]/).join("-") : "nil"
end

def dashatize(num)
  num.nil? ? 'nil' : num.to_s.gsub(/([13579])/, "-\\1-").gsub('--', '-').gsub(/(^-)|(-$)/, '')
end

