Script started on 2024-02-26 13:59:55-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="152" LINES="79"]
]0;lvm5@maroon07: ~/214/labs/07[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/07[00m$ cat Average.java
/* Average.java is a driver for method avg().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Lily McAboy
 * Date: 03/
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;

public class Average
{
	public static void main(String[] args) {

		double[] array1 = new double[] {9.0, 8.0, 7.0, 6.0};
		double[] array0 = null;

		// output the average of the values in the arrays
		System.out.println("The first average is " + avg(array0));
		System.out.println("The second average is " + avg(array1));
	}


	/* sum() is a method that computes the sum of all the values
	 * in an array of doubles.
	 * Receive: anArray, an array of doubles.
	 * Return: the sum of the values in anArray.
	 ************************************************************/

	public static double sum(double[] array){
		double total = 0.0;
		for(int i = 0; i < array.length; i++){
			total += array[i];
		}
		return total;
	}

	/* avg() is a method that computes the average of the values
	 * in an array.
	 * Receive: anArray, an array of doubles.
	 * Return: the average of the values in anArray.
	 **************************************************************/

	public static double avg(double[] array){
		if(array == null || array.length <= 0)
			return 0.0;
		else
			return sum(array)/array.length;

	}


}

]0;lvm5@maroon07: ~/214/labs/07[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/07[00m$ java Average.java
The first average is 0.0
The second average is 7.5
]0;lvm5@maroon07: ~/214/labs/07[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/07[00m$ exit

Script done on 2024-02-26 14:00:07-05:00 [COMMAND_EXIT_CODE="0"]
