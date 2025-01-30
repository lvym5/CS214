Script started on 2024-01-19 15:51:40-05:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="149" LINES="68"]
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ cat ruby cirl cle_area.rb
cat: ruby: No such file or directory
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
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ruby circe_area.rb
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- circe_area.rb ([1;4mLoadError[m[1m)[m
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.14159267
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.56637068
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2, .5
The circle's area is: 19.6349541875
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950259104718
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ exit
exit

Script done on 2024-01-19 15:52:20-05:00 [COMMAND_EXIT_CODE="0"]
