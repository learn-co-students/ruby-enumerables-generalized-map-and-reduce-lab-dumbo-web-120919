# Your Code Here
# https://stackoverflow.com/questions/5254732/difference-between-map-and-collect-in-ruby this yield explanation helped a lot.

def map(x)
  new_arr = []
  
  i = 0 
  
  while i < x.length
    new_arr << yield(x[i])
    
    i+= 1 
  end
  
  new_arr
  
end

def reduce(x, y = nil)
  if y
    acc = y
    
    i = 0 
  else 
    acc = x[0]
    i = 1
  end
  
  while i < x.length
    acc = yield(acc, x[i])
    
    i+= 1 
  end
  acc
end