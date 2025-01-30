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
