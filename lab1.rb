# function for beautiful output
def print_task_header(n)
  puts ""
  puts "---------- task #{n} ---------------"
  puts ""
end

# task 1
print_task_header(1)
array = [2, 3, 4, 5]

product = array.inject(1) { |result, element| result * element }

puts "Добуток елементів масиву: #{product}"


# task 2
print_task_header(2)
array = [2, 3, 4, 5]

arithmetic_mean = array.sum.to_f / array.size

geometric_mean = array.inject(1) { |product, element| product * element } ** (1.0 / array.size)

puts "Середнє арифметичне: #{arithmetic_mean}"
puts "Середнє геометричне: #{geometric_mean}"


# task 3
print_task_header(3)
array = [4, -9, -3, 7, -12, 8, 6, -15, 10, -21]

result = array.select { |element| element < 0 && element % 3 == 0 }

puts "Елементи масиву, менші за нуль і які діляться на 3: #{result}"


#task 4
print_task_header(4)
array = [4, -9, -3, 7, -12, 8, 6, -15, 10, -21]

sum = array.select { |element| element > 0 && element.even? }.sum

puts "Сума всіх парних додатних елементів масиву: #{sum}"


#task 5
print_task_header(5)
celsius_temperatures = [12, 15, 10, 8, 14, 9, 11, 7, 16, 13]

celsius_temperatures.each_with_index do |temp_c, day|
  temp_f = (temp_c * 9.0 / 5) + 32
  temp_k = temp_c + 273.15           
  
  puts "День #{day + 1}: Цельсій: #{temp_c}°C, Фаренгейт: #{temp_f.round(2)}°F, Кельвін: #{temp_k.round(2)}K"
end