def input_students
  puts "Please enter the names of the students"
  puts "Hit return twice to end"
  puts " "
  
  # Create an empty array
  students = []
  puts "Name:"
  name = gets.chomp
  
  puts "Cohort:"
  cohort = gets.chomp
  
  if cohort.empty?
    cohort = "Unknown"
  end
  #while cohort.empty? do
  #puts "Cohort:"
  #cohort = gets.chomp
  #end


  # While the name is not empty repeat the code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name.split.map(&:capitalize).join(' '), cohort: cohort.split.map(&:capitalize).join(' ')}
    if students.count == 1
      puts "We now have #{students.count} student"
    elsif
      puts "We now have #{students.count} students"
    end

    # Get another name from the user
    puts " "
    puts "Hit return twice to end"
    puts "Name:"
    name = gets.chomp
    puts "Cohort:"
    cohort = gets.chomp
    if cohort.empty?
      cohort = "Unknown"
    end

  end
  # Return the array of students
  students

end

# Create methods for the program to call
def print_header
  puts "The students of Villains Academy"
  puts "--------------------------------"
  puts "                                "
end

def print(students)
  students.each_with_index do |student, index|
  puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} Cohort)"
  end
end





def print_footer(students)
  if students.count == 1
    puts " "
    puts "Overall we have #{students.count} great student"
  elsif
    puts " "
    puts "Overall we have #{students.count} great students"
  end
end


# Calling the methods creates the result
students = input_students
print_header
print(students)
print_footer(students)
