Script started on 2024-04-05 15:14:44-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="151" LINES="43"]
]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ cat Birds.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by:
 * Date:
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();
      System.out.println();
    }
}

]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ cat Bird.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Lily McAboy
 * Date: 4/5/2024
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */

	public Bird()
	{
		myName = "";
	}


 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

	public Bird(String name)
	{
		myName = name;
	}


 /* Name accessor
  * Return: myName.
  */

	public String getName()
	{
		return myName;
	}


 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */

	public String call()
	{
		return "Squawkk!!!";
	}


 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */

	public void print()
	{
		System.out.println( getName() + ' ' + getClass().getName() + " says " + call());
	}



  private String myName;
}

]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ cat Duck.java
/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Duck extends Bird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Duck()
	{
		super();
	}

	public Duck(String name)
	{
		super(name);
	}


	/* A Duck's Call
	 * Return: a duck-call ("Quack!").
	 */

	public String call()
	{
		return "Quack!";
	}

	public void print()
	{
		System.out.println( getName() + ' ' + getClass().getName() + " says " + call());
	}


}

]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ cat Goose.java
/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Goose extends Bird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */

	public Goose()
	{
		super();
	}

	public Goose(String name)
	{
		super(name);
	}



	/* A Goose's Call
	 * Return: a goose-call ("Honk!").
	 */

	public String call()
	{
		return "Honkkkkk!";
	}

	public void print()
	{
		System.out.println( getName() + ' ' + getClass().getName() + " says " + call());
	}


} 

]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ cat Owl.java
/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Owl extends Bird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */

	public Owl()
	{
		super();
	}

	public Owl(String name)
	{
		super(name);
	}



	/* An Owl's Call
	 * Return: an owl-call ("Whoo-hoo!").
	 */

	public String call()
	{
		return "Whoo-hoo!";
	}

	public void print()
	{
		System.out.println( getName() + ' ' + getClass().getName() + " says " + call());
	}


} 

]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ make
javac -deprecation Birds.java
]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ java Birds

Welcome to the Bird Park!

Hawkeye Bird says Squawkk!!!
Donald Duck says Quack!
Mother Goose Goose says Honkkkkk!
Woodsey Owl says Whoo-hoo!

]0;lvm5@maroon07: ~/214/labs/10/java[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/java[00m$ exit

Script done on 2024-04-05 15:15:27-04:00 [COMMAND_EXIT_CODE="0"]
