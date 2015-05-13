# Assignment: Calculator
# ======================
#
# Code up your own calculator from the lecture.
# Make sure you can run it from the command line.
# Save the calculator file in a directory, and initialize the directory as a git repository.
# Make sure this isn't nested in another existing git repository.
# Then, push this git repository to Github.
#
# Hint: review this section on “do/while” loops on how to keep asking for input
# until some condition is met


def say_back(data)
  puts "=> #{data}"
end


def quit?(input)
  input == 'q' ? true : false
end


puts "-----------------------------"
puts "++++++ CALCULATOR 2000 ++++++"
puts "-----------------------------"
puts "Follow the instructions to calculate, or enter q to quit."
puts ""


while true do
  print "Enter 1st Number: "
  num_1 = gets.chomp
  break if quit?(num_1)
  say_back(num_1.to_i)

  print "Enter 2nd Number: "
  num_2 = gets.chomp
  break if quit?(num_2)
  say_back(num_2.to_i)

  puts "Choose an action: 1) Add  2) Subtract  3) Multiply  4) Divide"
  action = gets.chomp
  break if quit?(action)

  if num_2.to_i == 0 && action == '4'
    puts "Error: Cannot divide by 0"
    redo
  end

  case action
  when '1'
    say_back(num_1.to_i + num_2.to_i)
  when '2'
    say_back(num_1.to_i - num_2.to_i)
  when '3'
    say_back(num_1.to_i * num_2.to_i)
  when '4'
    say_back(num_1.to_i / num_2.to_f)
  else
    say_back("Please choose from option 1-4")
  end
end
