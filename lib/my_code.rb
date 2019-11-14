def map(array)
  new = []
  i = 0
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  new
end

def reduce(source_array, start=0)
  puts "array: " + source_array.to_s
  tot = start
  i = 0
  while i < source_array.length do
    puts i.to_s + " tot: " + tot.to_s
    puts i.to_s + " arr: " + source_array[i].to_s
    tot = yield(tot, source_array[i])
    puts tot
    i += 1
  end
  tot
end