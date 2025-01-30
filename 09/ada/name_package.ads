-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
--------------------------------------------------------------
package Name_Package is
	type Name is private;
	----------------------------------------------
        -- Init initializes a Name variable          -
        -- Receive: theName, the Name variable;      -
        --          First, the first name;           -
        --          Middle, the middle name;         -
        --          Last, the last name.             -
        -- Return: theName, its fields set to First, -
        --               Middle, and Last.           -
        ----------------------------------------------

	procedure Init(TheName: out Name; First, Middle, Last : in String);
	
	----------------------------------------------
        -- getFirst(Name) retrieves Name.myFirst        -
        -- Receive: theName, a Name.                 -
        -- PRE: theName has been initialized.        -
        -- Return: theName.myFirst.                  -
        ----------------------------------------------

	function getFirst(TheName : in Name) return String;
	function getMiddle(TheName : in Name) return String;
	function getLast(TheName : in Name) return String;
	-----------------------------------------------
        -- getFullName(Name) retrieves Name as a String  -
        -- Receive: theName, a Name.                  -
        -- PRE: theName has been initialized.         -
        -- Return: a String representation of theName -
        -----------------------------------------------

	function getFullName(TheName: in Name) return String;
	----------------------------------------------
        -- Put(Name) displays a Name value.          -
        -- PRE: theName has been initialized.        -
        -- Receive: theName, a Name.                 -
        -- Output: theName, to the screen.           -
        ----------------------------------------------

	procedure Put(TheName: in Name);

	private

	NAME_SIZE : Integer := 8;
	type Name is record myFirst, myMiddle, myLast : String(1..NAME_SIZE); end record;
end Name_Package;
