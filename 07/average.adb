-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Lily McAboy
-- Date:03/1/2024
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

	type Vector is array(Positive range <>) of Float;

	array1 : Vector := (9.0, 8.0, 7.0, 6.0);
	array0 : vector := (0.0, 0.0);


----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

-- Replace this line with definition of sum 

	function sum(arr: Vector) return Float is
		total : Float := 0.0;
	begin 
		--for I in arr'Range
		for I in 1 .. arr'Last
		loop
			total := total + arr(I);
		end loop;
		return total;
	end sum;


-- Replace this line with documentation and definition of average()
	function average(arr: Vector) return Float is
		begin 
			return sum(arr) / Float(arr'Length);
		end average; 

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

