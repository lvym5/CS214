#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
# Date: 1/19/2024
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.14159267 # set a constant pi  
def circleArea(r) #create a function called circleArea that takes in r (radius)
    PI * r ** 2 #Compute the area of a circle
end #end the function

if __FILE__ == $0 #_FILE_ holds the filename where we have our code, $0 is the name of the file to start the program
   puts "To compute the area of a circle," #print this statement
   print " enter its radius: " #Ask for an input 
   radius = gets.chomp.to_f #given a radius from the user, copy it to the program
   print "The circle's area is: " #print out 
   puts circleArea(radius) # print area of circle
end # end
