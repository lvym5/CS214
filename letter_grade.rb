# Name: Lily McAboy
# Date: 02/5/2024
###############################################################

def letter_grade(grade)
    usr_grade = grade / 10
    case usr_grade
    when 10 || 9
        "A"
    when 8
        "B"
    when 7
        "C"
    when 6 
        "D"
    else
        "F"
end

if __FILE__ == $0
   puts "Enter your grade: "
   grade = gets.chomp.to_f
   print "Your letter grade is: "
   puts letter_grade(grade)
end