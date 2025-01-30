Script started on 2024-02-01 19:56:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="82" LINES="33"]
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ cat year_codes.rb
# r_codes.rb translates an academic year into a numeric code
# Name: Lily McAboy
# Date: 2/2/2024
# CS214 Lab 3
# ################################################################
#
# # Input:  The name of an academic year
# # Precondition: The academic year is a string with a value of freshman, 
# #   sophomore, junior or senior
# # Output: The corresponding integer code for the given academic year
#

def yearCode(year)
  if year =~ /freshman/
    1
  elsif year =~ /sophomore/
    2
  elsif year =~ /junior/
    3
  elsif year =~ /senior/
    4
  else
    0
  end
end

 if __FILE__ == $0
    print "Enter the year: "
    year = gets
    print "Numeric code is: "
    puts yearCode(year)
end

]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ru y  by year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: u junior
Numeric code is: 3
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: se uper senior
Numeric code is: 4
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ ruby year_codes.rb
Enter the year: hello
Numeric code is: 0
]0;lvm5@remotel1: ~/214/labs/03[01;32mlvm5@remotel1[00m:[01;34m~/214/labs/03[00m$ exit
exit

Script done on 2024-02-01 19:57:12-05:00 [COMMAND_EXIT_CODE="0"]
