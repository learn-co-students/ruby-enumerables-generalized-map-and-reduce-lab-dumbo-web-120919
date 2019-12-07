def map(source)
  new = []
  i = 0 
  while i < source.length do 
    new << yield(source[i])
  i += 1
  end 
  return new
end


def reduce(source, sv=nil)
  if sv
    sum = sv
    i = 0 
  else
    sum = source[0]
    i = 1
  end
  while i < source.length do 
   sum = yield(sum, source[i])
    i += 1 
  end
  return sum
end