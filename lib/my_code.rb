def map(array)
  new = []
  i = 0
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  new
end

def reduce(array, start=1)
  puts "array: " + array.to_s
  tot = start
  i = 0
  while i < array.length do
    puts i.to_s + " tot: " + tot.to_s
    puts i.to_s + " arr: " + array[i].to_s
    puts tot || array[i]
    tot = yield(tot, array[i])
    puts tot
    i += 1
  end
  if tot.is_a? Numeric
    puts "numeric"
    tot -= 1
  end
  return tot
end