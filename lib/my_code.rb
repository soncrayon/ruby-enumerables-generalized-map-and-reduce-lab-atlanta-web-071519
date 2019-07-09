# Your Code Here
def map(source_array)
  new_array = []
  i = 0 
  while source_array[i] do 
    new_array.push(yield source_array[i])  
    i += 1 
  end
  return new_array
end 

def reduce(source_array, *starting_point)
if (source_array.include?(true) || source_array.include?(false) ||
source_array[0] == false) 
    boolean = !!source_array[0]  
    i = 0 
    while (i < source_array.length) do 
      boolean = yield !!boolean, !!source_array[i]
      i += 1 
    end 
    return !!boolean
else
  if starting_point[0]
    source_array = source_array.push(starting_point[0])
  end 
  array_sum = 0 
  i = 0 
  while source_array[i] do 
    array_sum = yield array_sum, source_array[i]
    i += 1 
  end 
  return array_sum 
end 
end



#def reduce(source_array, *starting_point)
  #if starting_point[0]
   # source_array = source_array.push(starting_point[0])
  #end 
  #yield source_array.map  
  #if source_array.all?
   #   return true  
  #  else
   #   return false 
  # end 
  #if source_array.all?
   #   return true  
    #else
     # return false 
  #end 
#end 


