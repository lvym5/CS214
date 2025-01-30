Script started on 2024-03-10 11:29:34-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="67" LINES="24"]
]0;lvm5@remotel1: ~/214/labs/08[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/08[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student:
 * Date:
 ************************************************************/

public class NameTester  
{
	public static void main(String[] args)
	{
		Name aName = new Name("John", "Paul", "Jones");
		//
		assert aName.getFirst().equals("John") ;
		assert aName.getMiddle().equals("Paul") ;
		assert aName.getLast().equals("Jones") ;
		//
		System.out.println(aName);
		assert aName.toString().equals("John Paul Jones");

		System.out.println("All tests passed!");
	}
}

class Name
{
	public Name(String first, String middle, String last)
	{
		myFirst = first;
		myMiddle = middle;
		myLast = last;
	}

	public String getFirst()
	{
		return myFirst;
	}

	public String getMiddle()
	{
		return myMiddle;
	}

	public String getLast()
	{
		return myLast;
	}

	public String toString()
	{
		return myFirst + ' ' + myMiddle + ' ' + myLast;
	}

	private String myFirst,
		myMiddle,
		myLast;
};
]0;lvm5@remotel1: ~/214/labs/08[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/08[00m$ java NameTester
John Paul Jones
All tests passed!
]0;lvm5@remotel1: ~/214/labs/08[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/08[00m$ exit

Script done on 2024-03-10 11:29:58-04:00 [COMMAND_EXIT_CODE="0"]
