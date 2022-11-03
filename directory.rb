def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # Create an empty array
  students = []
  name = gets.chomp
  # While the name is not empty repeat the code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name, cohort: :november}
    puts "We now have #{students.count} students"
    # Get another name from the user
    name = gets.chomp
  end
  # Return the array of students
  students
end

# Create methods for the program to call
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# Exercise 1 - Add numbers to the output
def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall we have #{students.count} great students"
end

# Calling the methods creates the result
students = input_students
print_header
print(students)
print_footer(students)
