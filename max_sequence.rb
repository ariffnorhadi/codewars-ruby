def max_sequence(a)
  #your code here
  max_ending_sum = max_slice_sum =0
  n=a.length
  for i in 0...n
    max_ending_sum = [0,(max_ending_sum+a[i])].max
    max_slice_sum = [max_slice_sum,max_ending_sum].max
  end
  return  max_slice_sum
end

# other solution
def max_sequence2(array)
  (1..array.size).map { |i| array.each_cons(i).map(&:sum) }.flatten.push(0).max
end

# another solution
def max_sequence3(arr)
  sum = 0
  max = 0
  for i in 0...arr.length
    sum += arr[i]

    if sum < 0
      sum = 0
    end

    if sum > max
      max = sum
    end
  end
  max
end