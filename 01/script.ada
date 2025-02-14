Script started on 2024-01-19 15:18:31-05:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="149" LINES="68"]
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ cat circle_area.adb
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Lily McAboy
-- Date: 1/19/2024
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO; -- includes float and text I/O libraries
use  Ada.Text_IO, Ada.Float_Text_IO; -- makes float and text I/O usable 

procedure circle_area is --procedures are statements that return no values, and is mostly like a main body of code needed to compute

   radius, area : float; -- creating 2 variables, radius and area, which are type float

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is -- defining a function called circleArea, taking in r (radius) type float, and returning a type float
      PI : constant := 3.1415927; -- Create constant pi
   begin -- start function
      return PI * r ** 2; --Compute area
   end circleArea; --end the function

begin                           -- like a print statement for the terminal
   New_Line; --develop a new line
   Put_Line("To compute the area of a circle,"); -- print this 
   Put("enter its radius: "); -- print request
   Get(radius); -- receive input

   area := circleArea(radius); --Compute circle area based on input

   New_Line; -- new line
   Put("The circle's area is "); --say what area is (kind of)
   Put(area); -- actually print area 
   New_Line; New_Line; -- new line 

   Put("The circle's area is "); -- print the area is 
   Put(area, 1, 15, 0); -- 15 is the number of decimal points, 0 is the exponent, and 1 is the minimum amount of numbers on the left side of the decimal point
   New_Line; New_Line; -- new line
end circle_area; --end procedure
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ gnatmake circle_area
x86_64-linux-gnu-gcc-7 -c circle_area.adb
x86_64-linux-gnu-gnatbind-7 -x circle_area.ali
x86_64-linux-gnu-gnatlink-7 circle_area.ali
]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ./circle_area.adb    

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;lvm5@maroon07: ~/214/labs/01[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/01[00m$ exit
exit

Script done on 2024-01-19 15:19:35-05:00 [COMMAND_EXIT_CODE="0"]
