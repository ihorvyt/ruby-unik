# function for beautiful output
def print_task_header(n)
    puts ""
    puts "---------- task #{n} ---------------"
    puts ""
end


print_task_header(1)

#task 1

# var 1
def find_longest_word(sentence)
    words = sentence.split(' ')
    longest_word = words.max_by(&:length)
    longest_word
  end
  
sentence = "Це тестовий рядок для пошуку найдовшого слова"
puts find_longest_word(sentence)
  
# var 2
def find_longest_word(sentence)
    words = sentence.split(' ')
    longest_word = ""
    words.each do |word|
      if word.length > longest_word.length
        longest_word = word
      end
    end
    longest_word
end
  
sentence = "Це тестовий рядок для пошуку найдовшого слова"
puts find_longest_word(sentence)
  

print_task_header(2)

#task 2

# var 1
def words_with_average_length(sentence)
    words = sentence.split(/\s+/)
    average_length = words.map(&:length).sum / words.size.to_f
    words.select { |word| word.length == average_length.round }
end
  
sentence = "Це тестовий рядок з mix 123 кирилиці, латиниці і цифр"
puts words_with_average_length(sentence).join(', ')
  
# var 2

def words_with_average_length(sentence)
    words = sentence.split(/\s+/)
    total_length = words.inject(0) { |sum, word| sum + word.length }
    average_length = total_length / words.size.to_f
    words.select { |word| word.length == average_length.round }
end
  
sentence = "Це тестовий рядок з mix 123 кирилиці, латиниці і цифр"
puts words_with_average_length(sentence).join(', ')
  

print_task_header(3)

#task 3

# var 1
def first_cyrillic_word(sentence)
    sentence.split(/\s+/).find { |word| word =~ /\A[А-Яа-я]+\z/ }
end
  
sentence = "Це рядок з mix 123 кирилиці, латиниці і цифр"
puts first_cyrillic_word(sentence)
  
# var 2
def first_cyrillic_word(sentence)
    words = sentence.split(/\s+/)
    words.each do |word|
      return word if word =~ /\A[А-Яа-я]+\z/
    end
    nil
end
  
sentence = "Це рядок з mix 123 кирилиці, латиниці і цифр"
puts first_cyrillic_word(sentence)
  

print_task_header(4)

#task 4

# var 1
def words_with_three_o(text)
    text.scan(/\b\w*о\w*о\w*о\w*\b/)
end
  
text = "Це оригінальний текст з перенесеннями, оскільки вони можуть містити три букви о. Давайте подивимося на це слово оооколо"
puts words_with_three_o(text).join(', ')
puts "оооколо"

  
# var 2
def words_with_three_o(text)
    words = text.split(/\s+/)
    words.select { |word| word.count('о') == 3 }
end
  
text = "Це оригінальний текст з перенесеннями, оскільки вони можуть містити три букви о. Давайте подивимося на це слово оооколо"
puts words_with_three_o(text).join(', ')
  

print_task_header(5)

#task 5

# var 1
def find_time(text)
    text.scan(/\b\d{1,2}:\d{2}:\d{2}\b/)
  end
  
  text = "Поточний час 14:30:15 і 23:59:59, а також 07:45:30"
  puts find_time(text).join(', ')
  
# var 2
def find_time(text)
    times = []
    text.split(/\s+/).each do |word|
      times << word if word =~ /\b\d{1,2}:\d{2}:\d{2}\b/
    end
    times
end
  
text = "Поточний час 14:30:15 і 23:59:59, а також 07:45:30"
puts find_time(text).join(', ')
  

print_task_header(6)

#task 6

# var 1
def unique_letter_words(text)
    text.scan(/\b\w+\b/).select { |word| word.chars.uniq.size == word.size && word =~ /[A-Za-zА-Яа-я]/ }
end
  
text = "Це слова: Лісп, Ruby, Паскаль, Java"
puts unique_letter_words(text).join(', ')
  
# var 2

def unique_letter_words(text)
    words = text.split(/\s+/)
    words.select { |word| word.chars.uniq == word.chars && word =~ /[A-Za-zА-Яа-я]/ }
end
  
text = "Це слова: Лісп, Ruby, Паскаль, Java"
puts unique_letter_words(text).join(', ')


print_task_header(7)

#task 7

# var 1
def correct_words(text)
    text.gsub(/\b\w*[A-ZА-Я]\w*[A-ZА-Я]\w*\b/) { |word| word.downcase }
end
  
text = "Це текст з словами з двома Прописними Буквами"
puts correct_words(text)
  
# var 2
def correct_words(text)
    words = text.split(/\s+/)
    corrected_words = words.map do |word|
      if word.scan(/[A-ZА-Я]/).size == 2
        word.downcase
      else
        word
      end
    end
    corrected_words.join(' ')
end
  
text = "Це текст з словами з двома Прописними Буквами"
puts correct_words(text)
  

print_task_header(8)

#task 8

# var 1
def find_dates(text)
    text.scan(/\b\d{2}\.\d{2}\.\d{4}\b/)
end
  
text = "Це текст з датами 21.11.2024 і 01.01.2023"
puts find_dates(text).join(', ')
  
# var 2
def find_dates(text)
    dates = []
    text.split(/\s+/).each do |word|
      dates << word if word =~ /\b\d{2}\.\d{2}\.\d{4}\b/
    end
    dates
end
  
text = "Це текст з датами 21.11.2024 і 01.01.2023"
puts find_dates(text).join(', ')
  

print_task_header(9)

#task 9

# var 1
def find_specific_dates(text)
    text.scan(/\b31\.12\.\d{4}\b/)
end

text = "Текст з датами 21.11.2024, 31.12.2023, 32.13.2023"
puts find_specific_dates(text).join(', ')

# var 2

def find_specific_dates(text)
    dates = []
    text.split(/\s+/).each do |word|
      dates << word if word =~ /\b31\.12\.\d{4}\b/
    end
    dates
end

text = "Текст з датами 21.11.2024, 31.12.2023, 32.13.2023"
puts find_specific_dates(text).join(', ')




print_task_header(10)
#task 10

# var 1

def extract_domains(text)
    text.scan(/https?:\/\/[\w.]+\//).map { |url| url.match(/https?:\/\/[\w.]+/)[0] }
end
  
text = "Текст з URL: https://en.wikibooks.org/wiki/Ruby_Programming, https://www.example.com/test"
puts extract_domains(text).join(', ')
  
# var 2

def extract_domains(text)
    urls = text.scan(/https?:\/\/[\w.]+\//)
    domains = urls.map do |url|
      url_parts = url.split('/')
      "#{url_parts[0]}//#{url_parts[2]}"
    end
    domains
end
  
text = "Текст з URL: https://en.wikibooks.org/wiki/Ruby_Programming, https://www.example.com/test"
puts extract_domains(text).join(', ')