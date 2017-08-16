require "pry"

def is_number(num)
  num.to_f.to_s == num.to_s || num.to_i.to_s == num.to_s
end

def first_calculate
  puts "Enter First Number: "
  first_num = gets.chomp
  puts "Enter Operator: "
  operator = gets.chomp
  puts "Enter Second Number: "
  second_num = gets.chomp
  if is_number(first_num) && is_number(second_num)
    first_num = first_num.to_f
    second_num = second_num.to_f
    case operator
      when "+"
        answer = first_num + second_num
      when "-"
        answer = first_num - second_num
      when "*"
        answer = first_num * second_num
      when "/"
        answer = first_num / second_num
      else
        puts "Operator #{operator} is unsupported. Use: + - / *"
        menu
    end
    puts "Calculating..."
    puts "#{first_num} #{operator} #{second_num} = #{answer}"
  else
    puts "Error: Enter a Number"
    menu
  end
  puts "Enter Operator or Type 'Clear'"
  @input = gets.chomp.downcase
  if @input == "clear"
    menu
  elsif
    calculate(answer)
  end
end


def menu
  puts "Welcome To Ruby Calculator"
  puts "1) Calculator"
  puts "2) Exit"
  input = gets.to_i
case input
  when 1
    first_calculate
  when 2
    exit
  end
end

def calculate(my_number)
  first_num = my_number
  operator = @input
  puts "Enter Second Number: "
  second_num = gets.chomp
  if is_number(first_num) && is_number(second_num)
    first_num = first_num.to_f
    second_num = second_num.to_f
    case operator
      when "+"
        answer = first_num + second_num
      when "-"
        answer = first_num - second_num
      when "*"
        answer = first_num * second_num
      when "/"
        answer = first_num / second_num
      else
        puts "Operator #{operator} is unsupported. Use: + - / *"
        menu
    end
    puts "Calculating..."
    puts "#{first_num} #{operator} #{second_num} = #{answer}"
  else
    puts "Error: Enter a Number"
  end
  puts "Enter Operator or Type 'Clear'"
  @input = gets.chomp.downcase
  if @input == "clear"
    menu
  elsif
  calculate(answer)
  end
end

menu
