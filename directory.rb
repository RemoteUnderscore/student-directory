def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  puts " "
  
  # Create an empty array
  students = []
  name = gets.chomp

  puts "Which cohort do they belong to?".center(50)
  cohort = gets.chomp

  # While the name is not empty repeat the code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name.split.map(&:capitalize).join(' '), cohort: cohort.split.map(&:capitalize).join(' ')}
    if students.count == 1
      puts "We now have #{students.count} student".center(50)
    elsif
      puts "We now have #{students.count} students".center(50)
    end

    # Get another name from the user
    puts "Another student? Hit return twice to end".center(50)
    name = gets.chomp
    cohort = gets.chomp
  end
  # Return the array of students
  students

end

# Create methods for the program to call
def print_header
  puts "The students of Villains Academy".center(50)
  puts "--------------------------------".center(50)
  puts "                                "
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  if students.count == 1
    puts " "
    puts "Overall we have #{students.count} great student".center(50)
  elsif
    puts " "
    puts "Overall we have #{students.count} great students".center(50)
  end
end


# Calling the methods creates the result
students = input_students
print_header
print(students)
print_footer(students)
