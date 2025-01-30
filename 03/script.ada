Script started on 2024-02-01 18:53:16-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="97" LINES="31"]
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ cat year_codes.adb
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


]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ gh natmake year_codes.adb
gnatmake: "year_codes" up to date.
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: freshman
          1
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: sohp  phomore
          2
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: junior
          3
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: senior
          4
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ./year_codes
Enter your academic year: super senior
          0
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ eit  xit
exit

Script done on 2024-02-01 18:53:58-05:00 [COMMAND_EXIT_CODE="0"]
