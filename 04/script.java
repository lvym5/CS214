Script started on 2024-02-08 19:01:27-05:00 [TERM="xterm-256color" TTY="/dev/pts/4" COLUMNS="111" LINES="36"]
]0;lvm5@remotel1: ~/214/labs/04[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/04[00m$ cat LogTable.java 
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Lily McAboy
 ********************************************************/
import java.util.Scanner;               // Get input

class LogTable{
	public static double log(double number){
		return Math.log10(number);
	}
	public static void main(String[] args){
		Scanner keyboard = new Scanner(System.in);
		System.out.println("To display a table of logarithms,");
		System.out.println("enter the start, stop and increment values: ");
		double start, stop, increment;
		start = keyboard.nextDouble();
		stop = keyboard.nextDouble();
		increment = keyboard.nextDouble();

		while(start <= stop){
			System.out.println("The log of " + start + " is " + log(start) + "\n");
			start += increment;
		}

	}
} 
]0;lvm5@remotel1: ~/214/labs/04[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/04[00m$ java LogTable.java
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
.5
The log of 1.0 is 0.0

The log of 1.5 is 0.17609125905568124

The log of 2.0 is 0.3010299956639812

The log of 2.5 is 0.3979400086720376

The log of 3.0 is 0.47712125471966244

The log of 3.5 is 0.5440680443502757

The log of 4.0 is 0.6020599913279624

The log of 4.5 is 0.6532125137753437

The log of 5.0 is 0.6989700043360189

The log of 5.5 is 0.7403626894942439

The log of 6.0 is 0.7781512503836436

The log of 6.5 is 0.8129133566428556

The log of 7.0 is 0.8450980400142568

The log of 7.5 is 0.8750612633917001

The log of 8.0 is 0.9030899869919435

The log of 8.5 is 0.9294189257142927

The log of 9.0 is 0.9542425094393249

The log of 9.5 is 0.9777236052888477

The log of 10.0 is 1.0

]0;lvm5@remotel1: ~/214/labs/04[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/04[00m$ exit
exit

Script done on 2024-02-08 19:01:46-05:00 [COMMAND_EXIT_CODE="0"]
