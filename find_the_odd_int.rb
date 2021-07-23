def find_it(seq)
  numberWithOddCount = 0
  seq.each do |currentElement|
    counter = 0
    seq.each { |elementToCompare| counter += 1 if currentElement == elementToCompare}
    numberWithOddCount = currentElement if counter % 2 != 0
  end
  numberWithOddCount
end

# better solution
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

def find_it(seq)
  seq.reduce(:^)
end