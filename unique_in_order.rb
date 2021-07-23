def unique_in_order(iterable)
  result = []
  iterable = iterable.split("") if !iterable.is_a? Array
  iterable.each_with_index {|x,i| result << x if iterable[i-1] != x || i == 0}
  result
end

# better solution

def unique_in_order(iterable)
  (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end

def unique_in_order(iterable)
  it_array= []
  iterable.length.times do |x|
    it_array << iterable[x] if iterable[x] != iterable[x+1]
  end
  it_array
end