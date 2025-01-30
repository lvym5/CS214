# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy 
# Date: 3/1/2024  
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

# Define sum() method here

def sum(arr)
  total = 0.0
  if arr.empty?
    return 0.0
  else
    arr.each { |item| total += item }
    return total
  end

end 
# Document and define average() method here
def average(arr)
  if arr.empty?
    return 0.0
  else
    return sum(arr) / arr.size.to_f
  end
end

def main
array0 = Array.new
array1 = [9.0, 8.0, 7.0, 6.0]
# Define array0 as an Array containing no values
# Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0

puts "sum 0 is: #{ sum(array0) }\n"
puts "sum 1 is: #{ sum(array1) }\n"

puts "average 0 is: #{ average(array0) }\n"
puts "average 1 is: #{ average(array1) }\n"
end

main

