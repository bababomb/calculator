def check_if_letter(number)
  while number =~ /[a-z]/ || number =~ /[A-Z]/
    puts "numbers only please"
    number = gets.chomp
  end
  number = number.to_i
  return number
end


while true
  puts "This is a calculator"

  puts "What is the first number you wish to input?"
  first_number = gets.chomp
  first_number = check_if_letter(first_number)

  puts "What is the second number you wish to input?"
  second_number = gets.chomp
  second_number = check_if_letter(second_number)

  puts "okay so I have these two numbers. What do you want me to do with them?
  If you want me to add type a \n
  if you want me to subtract type s \n
  If you want me to multiply type m \n
  If you want me to divide type d"
  input = gets.chomp
  if input == "a"
    puts first_number + second_number
  elsif input == "s"
    puts first_number - second_number
  elsif input == "m"
    puts first_number * second_number
  elsif input == "d"
    puts first_number / second_number
  else
    input = gets.chomp
  end
end
#variable.is_a?(String)  ==>
#variable.is_a?(Fixnum) is an interger
#this is a thing I want to remember
#puts first_number.class
