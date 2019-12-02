def map(array)
  new = []
  i = 0 
  while i < array.length do 
    new.push(yield(array[i]))
    i -= -1 
  end 
  return new
end 

def reduce (array, starting_point = nil)
 if !starting_point
   total = array[0]
   i = 1 
 else 
   total = starting_point
   i = 0 
 end 
 while i < array.length do 
   total = yield(total, array[i])
   i -= -1
 end 
  total 
 end