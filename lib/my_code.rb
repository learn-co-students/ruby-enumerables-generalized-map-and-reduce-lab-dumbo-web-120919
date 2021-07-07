#base map function
def map (array)
  new = []
  index = 0
  while index < array.length do
   new.push(yield(array[index]))
    index += 1
  end
  return new
end

#base reduce function
def reduce (array, start = 0)
  index = 0
  total = start
  while index < array.length do
    total = yield(total, array[index])
    index += 1
  end
  return total == 0 ? true : total
end