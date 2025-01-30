Script started on 2024-02-01 13:26:07-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="105" LINES="65"]
]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ cat YearCodes.java
///////////////////////////////////////////////////////////////////////
/* Controlling Behavior: Selection: Java exercise 
 * Name: Lily McAboy
 * Date: 2/2/2024
 * CS 214: Lab 03
 *
 */
///////////////////////////////////////////////////////////////////////

import java.util.Scanner;
//Public class YearCodes
public class YearCodes {
	//Creating a function yearcode that takes in a string
	public static int yearCode(String year)
	{
		if (year.equals("freshman"))
			return 1;
		else if (year.equals("sophomore"))
			return 2;
		else if (year.equals("junior"))
			return 3;
		else if (year.equals("senior"))
			return 4;
		else
			return 0;

	}

	//Main program
	public static void main(String[] args){
		//Prompt user for their year name
		System.out.print("\nEnter your year (freshman, sophomore, junior, or senior): ");
		//create a new scanner 
		Scanner keyboard = new Scanner(System.in);

		//getting the year from our user 
		String year = keyboard.nextLine();

		//Output 
		System.out.println("\nYour year is: " + yearCode(year) + "\n");
	}
}

]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ java YearCodes.java

Enter your year (freshman, sophomore, junior, or senior): freshman

Your year is: 1

]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ java YearCodes.java

Enter your year (freshman, sophomore, junior, or senior): sophomore

Your year is: 2

]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ java YearCodes.java

Enter your year (freshman, sophomore, junior, or senior): junior

Your year is: 3

]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ java YearCodes.java

Enter your year (freshman, sophomore, junior, or senior): senior

Your year is: 4

]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ java YearCodes.java

Enter your year (freshman, sophomore, junior, or senior): nothing

Your year is: 0

]0;lvm5@gold02: ~/214/labs/03[01;32mlvm5@gold02[00m:[01;34m~/214/labs/03[00m$ exit
exit

Script done on 2024-02-01 13:26:41-05:00 [COMMAND_EXIT_CODE="0"]
