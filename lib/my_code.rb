def map(array)
  arr = []
  counter = 0 
  
  while counter < array.length 
    arr << yield(array[counter])
    counter += 1 
  end
  arr 
end

def reduce(array, sv = nil)
  if sv 
    sum = sv
    counter = 0 
  else
    sum = array[0]
    counter = 1 
  end
  
  while counter < array.length 
   sum = yield(sum, array[counter])
   counter += 1 
 end
 sum
end
