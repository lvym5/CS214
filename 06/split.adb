
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by:
-- Date:
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

	EMPTY_STRING : String := "                                        ";

	The_String, Astring, Part1, Part2 : String  := EMPTY_STRING;
	Pos, Chars_read       : Natural;

	------------------------------------------------
	--  split() splits a string in two.           
	-- Receive: The_String, the string to be split,
	--          Position, the split index.        
	-- PRE: 0 < Position <= The_String.length(). 
	--     (Ada arrays are 1-relative by default)
	-- Passback: First_Part - the first substring,
	--           Last_Part - the second substring.
	------------------------------------------------
	-- Replace this line with definition of split() 
	procedure split(The_String: in String; Pos: in Natural; Part1, Part2: out String) is
	begin
		if Pos > The_String'Length then
			raise Constraint_Error;
		else
		Move(The_String(The_String'First .. Pos), Part1);
		Move(The_String((Pos+1) .. The_String'Last), Part2);
	end if;
	end split;


begin                                           -- Prompt for input
	Put("To split a string, enter the string: ");
	Get_Line(Astring, Chars_Read);
	Put("Enter the split position: ");
	Get(Pos);
	while Pos > The_String'Length loop
		Put_Line("Invalid position! Please enter a position within the length of the string.");
		Put("Enter the split position: ");
		Get(Pos);
	end loop;
	split(Astring, Pos, Part1, Part2);

	Put("The first part is ");
	Put_Line(Part1);
	Put(" and the second part is ");
	Put_Line(Part2);

end split;


