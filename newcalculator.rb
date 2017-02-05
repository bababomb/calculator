#code that can use everytime want to make sure that
#typed a number and not a letter

def check_if_letter(number)
  while number =~ /[a-z]/
    puts "numbers only please"
    number = gets.chomp
  end
  number = number.to_i
  return number
end

#Makes sure that it will go on forever
while true
  puts "This is a calculator"

  puts "What is the first number you wish to input?"
  first_number = gets.chomp.downcase
  first_number = check_if_letter(first_number)

  puts "What is the second number you wish to input?"
  second_number = gets.chomp.downcase
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
