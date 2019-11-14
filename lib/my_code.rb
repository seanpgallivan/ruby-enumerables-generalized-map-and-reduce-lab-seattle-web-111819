def map(array)
  new = []
  i = 0
  while i < array.length do
    new << yield(array[i])
    i += 1
  end
  new
end

def reduce(array, start=0)
  puts array
  tot = start
  i = 0
  while i < array.length do
    puts tot
    puts array[i]
    tot = yield(tot, array[i])
    puts tot
    i += 1
  end
  tot
end