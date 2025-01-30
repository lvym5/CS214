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

