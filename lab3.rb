#task 1

trips = {
  "Київ-Париж" => 1200,
  "Київ-Лондон" => 1500,
  "Львів-Берлін" => 900,
  "Харків-Мадрид" => 1800,
  "Одеса-Рим" => 1400,
  "Дніпро-Варшава" => 700,
  "Запоріжжя-Прага" => 1000,
  "Харків-Амстердам" => 2000,
  "Київ-Будапешт" => 800,
  "Львів-Барселона" => 0
}
# puts "Хеш подорожей створено:"
# trips.each do |route, distance|
#   puts "#{route} - #{distance} км"
# end

#task 2

indexed_trips = trips.to_a
# puts "Індексний масив подорожей: #{indexed_trips}"


#task 3

# puts "Оберіть спосіб сортування (1 - за напрямком, 2 - за ціною):"
# choice = gets.chomp.to_i

# sorted_trips = case choice
# when 1
#   trips.sort.to_h
# when 2
#   trips.sort_by { |_, price| price }.to_h
# else
#   puts "Невірний вибір!"
#   trips
# end

# puts "Відсортований хеш подорожей:"
# sorted_trips.each do |route, distance|
#   puts "#{route} - #{distance} ціна"
# end

#task 4

shortest_trips = trips.keys.sort_by(&:length).first(3).map { |key| [key, trips[key]] }.to_h
# puts "Три подорожі з найкоротшими назвами напрямків: #{shortest_trips}"

#task 5

# cheapest_trips = trips.reject { |_, price| price.zero? }.sort_by { |_, price| price }.first(5).to_h
# puts "П'ять найдешевших подорожей: #{cheapest_trips}"

# #task 6

# available_seats = {
#   "Київ-Париж" => 20,
#   "Київ-Лондон" => 15,
#   "Львів-Берлін" => 25,
#   "Харків-Мадрид" => 10,
#   "Одеса-Рим" => 30,
#   "Дніпро-Варшава" => 12,
#   "Запоріжжя-Прага" => 18,
#   "Харків-Амстердам" => 5,
#   "Київ-Будапешт" => 22,
#   "Львів-Барселона" => 8
# }

# puts "Введіть напрямок подорожі:"
# direction = gets.chomp

# if available_seats.key?(direction)
#   puts "Доступно місць: #{available_seats[direction]}"
# else
#   # puts "Такої подорожі немає!"
# end

#task 7

total_cost = trips.values.sum
# puts "Загальна вартість усіх подорожей: #{total_cost}"

#task 8

trips.each do |direction, price|
  if price.nil? || price.zero?
    puts "Введіть ціну для подорожі '#{direction}':"
    trips[direction] = gets.chomp.to_i
  end
end

puts "оновлений хеш:"
trips.each do |route, price|
  puts "#{route} - #{price} ціна"
end