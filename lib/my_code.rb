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
  tot = start
  i = 0
  while i < array.length do
    tot += yield(array[i])
    i += 1
  end
  tot
end