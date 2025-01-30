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

