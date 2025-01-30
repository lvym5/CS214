Script started on 2024-04-05 16:41:34-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="126" LINES="58"]
]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ cat Bird.rb

# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
# Date: 4/4/2024
####################################################
class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + className + " says " + call
  end

end

]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ cat birds.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Lily McAboy
# Date: 4/4/2024
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"

]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ cat Owl.rb
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'

class Owl < Bird

  def call
    "WHOOOOOOO"
  end

end

]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ cat Goose.rb
#Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'

class Goose < Bird

  def call
    "Honk!"
  end

end



]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ cat Duck.rb
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#   #
#   # Begun by: Dr. Adams, for CS 214 at Calvin College.
#   # Completed by:
#   # Date:
#

require './Bird.rb'

class Duck < Bird

  def call
    "Quack"
  end

end


]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ ruby brds.r     irds.rb

Welcome to the Bird Park!

HawkeyeBird says Squaaaaaaawk!
DonaldDuck says Quack
MotherGoose says Honk!
WoodseyOwl says WHOOOOOOO


]0;lvm5@maroon07: ~/214/labs/10/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/labs/10/ruby[00m$ exit

Script done on 2024-04-05 16:42:05-04:00 [COMMAND_EXIT_CODE="0"]
