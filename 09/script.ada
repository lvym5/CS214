Script started on 2024-03-25 20:53:51-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;lvm5@remotel3: ~/214/labs/09/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ada[00m$ cat name_package.adb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------------i
with Ada.Text_IO; use Ada.Text_IO;
with Name_Package; use Name_Package;

package body name_package is
	procedure Init(TheName: out Name; First, Middle, Last : in String) is begin TheName.MyFirst := First; TheName.MyMiddle := Middle; TheName.MyLast := Last; end Init;

	function getFirst(TheName : in Name) return String is begin return TheName.MyFirst; end getFirst;

	function getMiddle(TheName : in Name) return String is begin return TheName.MyMiddle; end getMiddle;

	function getLast(TheName : in Name) return String is begin return TheName.MyLast; end getLast;

	function getFullName(TheName: in Name) return String is begin return TheName.myFirst & TheName.MyMiddle & TheName.MyLast; end getFullName;

	procedure Put(TheName: in Name) is begin Put(getFullName(TheName)); end Put;

end name_package;

procedure name_package is
	aName : Name_Package.Name;

begin
	Name_Package.Init(aName, "John    ", "Paul    ", "Jones   ");
end Name_Package;
]0;lvm5@remotel3: ~/214/labs/09/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ada[00m$ cat name_package.ads
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
]0;lvm5@remotel3: ~/214/labs/09/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ada[00m$ gcc -c name_package.adb
[01m[Kgcc:[m[K [01;31m[Kfatal error: [m[Kcannot execute '[01m[Kgnat1[m[K': execvp: No such file or directory
compilation terminated.
]0;lvm5@remotel3: ~/214/labs/09/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ada[00m$ exit

Script done on 2024-03-25 20:54:31-04:00 [COMMAND_EXIT_CODE="1"]
