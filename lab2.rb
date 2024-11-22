# block 1

# task 1
# variant 1

array = [10, 20, 15, 30, 25]
average = array.sum.to_f / array.size
result = array.select { |x| x > average }
puts "Середнє арифметичне: #{average}"
puts "Елементи більші за середнє арифметичне: #{result}"

#variant 2

array = [10, 20, 15, 30, 25]
average = array.inject(:+).to_f / array.length
result = array.filter { |x| x > average }
puts "Середнє арифметичне: #{average}"
puts "Елементи більші за середнє арифметичне: #{result}"


# task 2
# variant 1

array = [10, 20, 15, 30, 25]
first = array.first
last = array.last
result = array.map.with_index do |x, i|
  if i == 0 || i == array.size - 1
    x
  elsif x.even?
    x + first
  else
    x + last
  end
end
puts "Модифікований масив: #{result}"

# variant 2

array = [10, 20, 15, 30, 25]
first, last = array[0], array[-1]
result = array.each_with_index.map do |x, i|
  case
  when i == 0 || i == array.length - 1
    x
  when x.even?
    x + first
  else
    x + last
  end
end
puts "Модифікований масив: #{result}"


# block 2

# task 3
# variant 1

matrix = [[10, 20, 30], [40, 15, 5], [5, 50, 25]]
max_value = matrix.flatten.max
result = matrix.map do |row|
  if row.include?(max_value)
    row.sort
  else
    row
  end
end
puts "Модифікована матриця:"
result.each { |row| p row }


# variant 2
matrix = [[10, 20, 30], [40, 15, 5], [5, 50, 25]]
max_value = matrix.flatten.max
result = matrix.map do |row|
  row.include?(max_value) ? row.sort : row
end
puts "Модифікована матриця:"
result.each { |row| p row }


# task 4
# variant 1
matrix = [[10, 20, 30], [40, 15, 5], [5, 50, 25]]
result = matrix.map do |row|
  row == row.sort || row == row.sort.reverse ? row.sort : row.shuffle
end
puts "Модифікована матриця:"
result.each { |row| p row }

# variant 2

matrix = [[10, 20, 30], [40, 15, 5], [5, 50, 25]]
result = matrix.map do |row|
  if row.sort == row || row.sort.reverse == row
    row.sort
  else
    row.sample(row.size)
  end
end
puts "Модифікована матриця:"
result.each { |row| p row }
