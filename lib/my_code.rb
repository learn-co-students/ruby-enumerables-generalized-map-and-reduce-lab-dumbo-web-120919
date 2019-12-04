def map(array)
  mapped_array = []
  i = 0 
  while i < array.length do
    mapped_array << yield(array[i])
    i += 1 
  end
  mapped_array
end

def reduce(array, starting_point=nil)
  if starting_point
    reduced_value = starting_point
    i = 0 
  else
    reduced_value = array[0]
    i = 1 
  end
  while i < array.length do
    reduced_value = yield(reduced_value, array[i])
    i += 1 
  end
  reduced_value
end