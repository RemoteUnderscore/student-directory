# Create an array of students
students = [
    "Dr Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the East",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
# Print the students
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
#Print the total
print "Overall we have #{students.count} great students"
