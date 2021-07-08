# Your Code Here
def map(arr)
  new_arr = []
  i = 0
  while i < arr.length do
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end 

def reduce(arr, num = nil)
  if num
    sum = num
    i = 0
  else
    sum = arr[0]
    i = 1
  end
  
  while i < arr.length 
    sum = yield(sum, arr[i])
    i += 1
  end
  sum
end

