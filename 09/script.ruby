Script started on 2024-03-25 20:53:04-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
cat ]0;lvm5@remotel3: ~/214/labs/09/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ruby[00m$ cat     cat Name.rb
#####################################################
#Name: Lily McAboy
#Date 3/25/2024
#Name Class
####################################################

module Names
class Name

  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end

  attr_reader :first, :middle, :last

  def fullName
    @first + " " + @middle + " " + @last
  end

  def print
    puts fullName
    fullName
  end
end
end
]0;lvm5@remotel3: ~/214/labs/09/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ruby[00m$ cat nameTester.rb 
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:
# Date:
####################################################

require 'test/unit/assertions'
include Test::Unit::Assertions
require './Name'

def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;lvm5@remotel3: ~/214/labs/09/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ruby[00m$ ruby nameTester.rb
John Paul Jones
All tests passed!
]0;lvm5@remotel3: ~/214/labs/09/ruby[01;32mlvm5@remotel3[00m:[01;34m~/214/labs/09/ruby[00m$ exit

Script done on 2024-03-25 20:53:24-04:00 [COMMAND_EXIT_CODE="0"]
