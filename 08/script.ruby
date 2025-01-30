Script started on 2024-03-11 18:38:24-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="95" LINES="30"]
]0;lvm5@remotel1: ~/214/labs/08[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/08[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
# Date: 3/11/2024
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

# Replace this line with the declaration of class Name
class Name

  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end

  def fullName()
    return @first + " " + @middle + " " + @last 
  end

  def print()
    puts fullName()
    return fullName()
  end
  attr_reader :first, :middle, :last

end

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;lvm5@remotel1: ~/214/labs/08[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/08[00m$ ruby NameTester.rub  b
John Paul Jones
All tests passed!
]0;lvm5@remotel1: ~/214/labs/08[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/08[00m$ exit

Script done on 2024-03-11 18:38:42-04:00 [COMMAND_EXIT_CODE="0"]
