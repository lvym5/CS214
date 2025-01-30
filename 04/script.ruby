Script started on 2024-02-08 20:27:31-05:00 [TERM="xterm-256color" TTY="/dev/pts/4" COLUMNS="125" LINES="44"]
]0;lvm5@remotel1: ~/214/labs/04[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/04[00m$ cat logTable.rb
#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
  print "Enter the start value: "
  start = gets.chomp.to_f
  print "Enter the stop value: "
  stop = gets.chomp.to_f
  print "Enter the increment value: "
  inc = gets.chomp.to_f
  while start <= stop do

    puts "The logarithm of " + start.to_s + " is " + Math.log10(start).to_s
    start += inc

  end

end
]0;lvm5@remotel1: ~/214/labs/04[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/04[00m$ ruby logTable.rb
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: 0.5
The logarithm of 1.0 is 0.0
The logarithm of 1.5 is 0.17609125905568124
The logarithm of 2.0 is 0.3010299956639812
The logarithm of 2.5 is 0.3979400086720376
The logarithm of 3.0 is 0.47712125471966244
The logarithm of 3.5 is 0.5440680443502757
The logarithm of 4.0 is 0.6020599913279624
The logarithm of 4.5 is 0.6532125137753437
The logarithm of 5.0 is 0.6989700043360189
The logarithm of 5.5 is 0.7403626894942439
The logarithm of 6.0 is 0.7781512503836436
The logarithm of 6.5 is 0.8129133566428556
The logarithm of 7.0 is 0.8450980400142568
The logarithm of 7.5 is 0.8750612633917001
The logarithm of 8.0 is 0.9030899869919435
The logarithm of 8.5 is 0.9294189257142927
The logarithm of 9.0 is 0.9542425094393249
The logarithm of 9.5 is 0.9777236052888477
The logarithm of 10.0 is 1.0
]0;lvm5@remotel1: ~/214/labs/04[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/04[00m$ exit
exit

Script done on 2024-02-08 20:27:55-05:00 [COMMAND_EXIT_CODE="0"]
