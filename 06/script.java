Script started on 2024-02-22 19:45:28-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="99" LINES="33"]
]0;lvm5@remotel1: ~/214/labs/06[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/06[00m$ cat sc  s Split.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: 
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
	// main program
	public static void main(String[] args)
	{
		Scanner keyboard = new Scanner(System.in);
		// prompt for the string
		System.out.println("\nTo split a string, enter the string: ");
		String theString = keyboard.next();

		// prompt for splitting position
		System.out.println("\nEnter the split position: ");
		int position = keyboard.nextInt();

		//Create list, compute results and print
		String [] resultList = new String[2];
		splitter(theString, position, resultList);
		System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);

	}

	/* splitter() splits a string according to the position specified
	 * Receive:   theString - the string to be split
	 *            pos - the position at which to split
	 *            resList - an array of strings in which to place results
	 *****************************************************/
	// replace this line with a definition for splitter
	public static void splitter(String theString, int pos, String[] results)
	{
		results[0] = theString.substring(0, pos);
		results[1] = theString.substring(pos, theString.length());
	}

}

]0;lvm5@remotel1: ~/214/labs/06[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/06[00m$ java Spi lit.java

To split a string, enter the string: 
hello

Enter the split position: 
0

The first part is 
 and the second part is hello
]0;lvm5@remotel1: ~/214/labs/06[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/06[00m$ java Split.java

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
]0;lvm5@remotel1: ~/214/labs/06[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/06[00m$ java Split.java

To split a string, enter the string: 
5

Enter the split position: 

4
Exception in thread "main" java.lang.StringIndexOutOfBoundsException: begin 0, end 4, length 1
	at java.base/java.lang.String.checkBoundsBeginEnd(String.java:3319)
	at java.base/java.lang.String.substring(String.java:1874)
	at Split.splitter(Split.java:40)
	at Split.main(Split.java:27)
]0;lvm5@remotel1: ~/214/labs/06[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/06[00m$ java Split.java

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
]0;lvm5@remotel1: ~/214/labs/06[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/06[00m$ exit

Script done on 2024-02-22 19:46:19-05:00 [COMMAND_EXIT_CODE="0"]
