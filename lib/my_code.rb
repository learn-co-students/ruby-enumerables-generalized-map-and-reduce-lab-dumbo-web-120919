# Your Code Here
def map(source_array)
  new = []
  i = 0 
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1 
  end
  return new 
end

def reduce(array, startingv = nil) 
  if startingv
    num1 = startingv
    i = 0 
  else
    num1 = array[0]
    i = 1 
  end
  
  while i < array.length do 
    num1 = yield(num1, array[i])
    i += 1 
  end
return num1 
end