=begin

students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader", cohort: :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of the West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddy Krueger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Joffrey Baratheon", cohort: :november},
 {name: "Norman Bates", cohort: :november}
]

=end

def print_header
puts "The students of Villians Academy"
puts "----------"
end

def print(students)
 students.each_with_index do |student, index|
 puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
 end
end


def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


def input_students
  puts "Please enter the name of student"
  puts "To finish, hit enter twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

students = input_students
print_header
print(students)
print_footer(students)
