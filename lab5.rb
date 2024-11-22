# function for beautiful output
def print_task_header(n)
  puts ""
  puts "---------- task #{n} ---------------"
  puts ""
end


print_task_header(1)


def greet(name, greeting="Hello")
  puts "#{greeting}, #{name}!"
end

class MyClass
  def hello
    puts "Hello from MyClass!"
  end
end

class MyClassChild < MyClass
  def hello
    puts "Hello from MyClassChild!"
  end
end

greet("Alice")
greet("Bob", "Hi")

obj = MyClassChild.new
obj.hello



print_task_header(2)



def greet(name:, age: nil, city: "Unknown")
  puts "Name: #{name}, Age: #{age}, City: #{city}"
end

greet(name: "Alice", age: 25, city: "London")
greet(name: "Bob")





print_task_header(2)


def is_even?(number)
  number % 2 == 0
end

def is_odd?(number)
  number % 2 != 0
end

puts is_even?(4)
puts is_odd?(5)







print_task_header(3)



class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  # Оператор "+"
  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end

  # Присвоєння значення
  def assign!(x, y)
    @x, @y = x, y
  end
end

point1 = Point.new(1, 2)
point2 = Point.new(3, 4)
result = point1 + point2
puts "Result: (#{result.x}, #{result.y})"

point1.assign!(10, 20)
puts "Point1 after assign: (#{point1.x}, #{point1.y})"




print_task_header(4)



def sum_elements(arr)
  arr.sum
end

numbers = [1, 2, 3, 4, 5]
puts sum_elements(numbers)






print_task_header(5)


class MyClass
  def greet
    puts "Hello, world!"
  end
  alias hello greet
end

obj = MyClass.new
obj.hello



print_task_header(6)


def custom_method
  yield("Ruby")
end

custom_method { |language| puts "I love #{language}!" }




print_task_header(7)



def greet_with_yield
  yield
end

def greet_with_argument
  yield("Ruby")
end

greet_with_yield { puts "Hello!" }
greet_with_argument { |language| puts "Hello, #{language}!" }



print_task_header(8)


proc_no_args = Proc.new { puts "No arguments!" }
proc_with_args = Proc.new { |x| puts "Argument: #{x}" }

proc_no_args.call
proc_with_args.call(42)



print_task_header(9)


lambda_no_args = lambda { puts "No arguments in lambda!" }
lambda_with_args = lambda { |x| puts "Lambda argument: #{x}" }

lambda_no_args.call
lambda_with_args.call(100)