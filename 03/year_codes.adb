-- Lab 03
-- Name: Lily McAboy
-- Date: 2/2/2024

-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

	year : String(1..9) := "         ";
	charsRead : Natural;
	function yearCode(usr: String) return Natural is
	begin 
		if usr = "freshman " then
			return 1;
		elsif usr = "sophomore" then
			return 2;
		elsif usr = "junior   " then 
			return 3;
		elsif usr = "senior   " then
			return 4;
		else 
			return 0;
		end if;
	end yearCode;

begin
	Put("Enter your academic year: ");           -- Prompt for input
	Get_Line(year, charsRead);                   -- Input
	Put( yearCode(year) );                       -- Convert and output
	New_Line;
end year_codes;


