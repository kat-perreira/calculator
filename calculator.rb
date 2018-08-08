=begin INSTRUCTIONS. Ada Calculator, Due August 8, 2018
The program should have support for these four operations
addition, subtraction, multiplication, and division.
The program should accept both the name (add) and the symbol (+) for
each possible operation. The program should handle unexpected user input
=end

# define some methods to do the math
def addition(first_num, second_num)
  return first_num + second_num
end

#write an addition test invoking the method in the test
def addition_test
  if addition(2, 3) != 5 # 2 + 3 = 5
    raise "something is wrong with your addition method"
  end
end

def subtraction(first_num, second_num)
  return first_num - second_num
end

#write a subtraction test
def subtraction_test
  if subtraction(5, 2) != 3 # 5 - 2 = 3
    raise "something is buggy with subtraction method"
  end
end

def multiplication(first_num, second_num)
  return first_num * second_num
end

#write a multiplication test
def multiplication_test
  if multiplication(4, 2) != 8 # 4 * 2 = 8
    raise "something not right in multiplication method"
  end
end

def division(first_num, second_num)
  first_num/second_num
end

#write a division test
def division_test
  if division(9, 3) != 3
    raise "something is buggy with your division method"
  end
end

#invoke test methods, see if they pass
addition_test #passed
subtraction_test #passed
multiplication_test #passed
division_test #passed

# Print out instructions asking for a chosen operation
puts "What kind of math would you like to math?"
puts "1. To add, enter A or (+)"
puts "2. To subtract, enter S or (-)"
puts "3. To multiply, enter M or (*)"
puts "4. To divide, enter D (/)"
puts

in_progress = true

while in_progress
  print "Enter a selection: "
  user_operation = gets.chomp
  print "Enter a number: "
  number_one = gets.chomp.to_f #Buggy...will evaluate 0 with string
  print "Enter another number: "
  number_two = gets.chomp.to_f
  # to solve my bug after submission:
  # change number input to a string
  # define a number_error message
  # def num_error
  # puts "This isn't a number try again"
  # end 
  # then def num? (some_number)
  # if some_num !~ /\pDigit
  # puts number_eror
  # end
  # end
  # if passes error check, change the string to a float for rest

  #case statement for user operation
  case user_operation
  when "A", "+"
    user_answer = addition(number_one, number_two)
    puts "The answer is #{user_answer}"
  when "S", "-"
    user_answer = subtraction(number_one, number_two)
    puts "The answer is #{user_answer}"
  when "M", "*"
    user_answer = multiplication(number_one, number_two)
    puts "The answer is #{user_answer}"
  when "D", "/"
    user_answer = division(number_one, number_two)
    puts "The answer is #{user_answer}"
  else
    puts "Something went wrong, let's try again"
  end

  puts "Would you like to do more math?"
  print "Y or N: "
  answer = gets.chomp.upcase

  if answer == "N"
    puts "Thanks for using the calculator."
    in_progress = false
    exit
  else
    in_progress = true

  end
end
