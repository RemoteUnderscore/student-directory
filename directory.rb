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

  puts "Country of birth?"
  birth = gets.chomp
  if birth.empty?
    birth = "Unknown"
  end

  puts "Height in cm:"
  height = gets.chomp
  if height.empty?
    height = "Unknown"
  end
  #while cohort.empty? do
  #puts "Cohort:"
  #cohort = gets.chomp
  #end


  # While the name is not empty repeat the code
  while !name.empty? do
    # Add the student hash to the array
    students << {name: name.split.map(&:capitalize).join(' '), cohort: cohort.split.map(&:capitalize).join(' '), birth: birth.split.map(&:upcase).join(' '), height: height.split.map(&:capitalize).join(' ')}
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
def print_header(students)
  if students.count == 0
    puts " "
  elsif students.count == 1
    puts "The students of Villains Academy"
    puts "--------------------------------"
    puts " "
  else
    puts "The students of Villains Academy"
    puts "--------------------------------"
    puts " "

end
end

def print(students)
  students.each_with_index do |student, index|
  puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} Cohort) | Country of birth: #{student[:birth]} | Height: #{student[:height]}"
  end
end

def print_footer(students)
  if students.count == 0
    puts "There are no students at Villains Academy"
  elsif students.count == 1
    puts " "
    puts "Overall we have #{students.count} great student"
  elsif
    puts " "
    puts "Overall we have #{students.count} great students"
  end
end


# Calling the methods creates the result
students = input_students
print_header(students)
print(students)
print_footer(students)





# Exercise 1 - Indexing list - completed

# Exercise 2

# Exercise 3

# Exercise 4

# Exercise 5 - Added information - completed

# Exercise 6 - Centering - completed

# Exercise 7 - Default value for empty cohort - completed

# Exercise 8

# Exercise 9 - Removing plural for single student - completed

# Exercise 10

# Exercise 11 - Typos.rb - completed

# Exercise 12

# Extended exercise 1 - Capitalising names and cohort - completed