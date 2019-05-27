puts "Bernard Johnson"
print "Giraffe Acadamy"
puts " is cool"

puts "  /|"
puts " / |"
puts "/__|"

character_name = "John"
character_age = "35"

puts ("There once was a man named " + character_name)
puts ("he was " + character_age + " years old.")

character_name = "Tom"

puts ("He really liked the name " + character_name)
puts ("but didn't like being " + character_age)

name = "Mike"
occupation = "Developer"

age = 35 
gpa = 3.2

is_male = true
is_short = false

flaws = nil

phrase = "  Some Words   "

puts "Giraffe\" Academy"
puts "Giraffe\nAcademy"
puts phrase

puts phrase.upcase()
puts phrase.downcase()
puts phrase.strip()
puts phrase.length()

puts phrase.include? "Words"
puts phrase[3]
puts phrase[0, 3]
puts phrase.index("W")

puts "string".upcase()

puts 5
puts 5.8734
puts -5

puts 5 + 5
puts 5 - 5
puts 5 * 5
puts 5 / 5
puts 5 ** 5
puts 5 % 2

num = 10.25

puts ("my fave num " + num.to_s)

puts num.abs()
puts num.round()
puts num.ceil()
puts num.floor()

puts Math.sqrt(num)
puts Math.log(num)

puts 1 + 7
puts 1.0 + 7

puts 10 / 7
puts 10 / 7.00


puts "Enter Your Name: "
name = gets 
puts ("Hello " + name)

puts "Enter Your Age: "
age = gets.chomp()
puts ("Are you really " + age + " years old?")

friends = Array["Brandon", "Robin", "Sam", "Michael", 24, 4.4, false]

puts friends
puts friends[1]
puts friends[-1]
puts friends[0,2]

friends[4] = "Bob"
puts friends[4]

skills = Array.new

puts skills

skills[0] = "React"
skills[4] = "Ruby"

puts skills

puts friends.length()
puts friends.include? "Robin"
puts friends.reverse()

states = {
    :Alaska => "Ak",
    :Virginia => "Va",
    "Tennessee" => "Tn",
    "North Carolina" => "Nc"
}

puts states
puts states["Tennessee"]
puts states[:Alaska]

def sayHi(name="No Name", age=-1)
    puts ("Hello " + name + ", you are " + age.to_s)
end

sayHi("Bernard", 26)
sayHi

def cube(num)
    num * num * num
    5
end

def return_cube(num)
    return num * num * num
    5
end

def return_multi(num)
    return num * num * num, 70
end

puts cube(3)
puts return_cube(3)
puts return_multi(5)
puts return_multi(2)[0]

isMale = true
isTall = false

if isMale and isTall
    puts "You are a tall male"
else
    puts "You are not tall or male"
end

if isMale and isTall
    puts "You are a  tall male"
elsif isMale and !isTall
    puts "You are a short male"
elsif !isMale and isTall
    puts "You are a tall female"
else 
    puts "You are a short female"
end

def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else 
        return num3
    end
end

puts max(2, 20, 3)
puts max(2, 1, 3)
puts max(32, 1, 2)

def get_day_name(day)
    day_name = ""

    case day
        when "mon"
            day_name = "Monday" 
        when "tue"
            day_name = "Tuesday" 
        when "wed"
            day_name = "Wednesday" 
        when "thu"
            day_name = "Thrusday" 
        when "fri"
            day_name = "Friday" 
        when "sat"
            day_name = "Saturday"
        when "sun"
            day_name = "Sunday"  
        else
            day_name = "Invalid Abbreviation"
    end

    return day_name
end

puts get_day_name("mon")
puts get_day_name("wed")
puts get_day_name("fri")
puts get_day_name("bob")


index = 1

while index <= 8
    puts index
    index += 1
end


coworkers = ["Heather", "Ian", "Zack", "Jacob"]

for coworker in coworkers
    puts coworker
end

coworkers.each do |coworker|
    puts coworker
end

for index in 0..5
    puts index
end

6.times do |index|
    puts index
end



def pow(base_num, pow_num)
    result = 1

    pow_num.times do
        result = result * base_num
    end

    return result
end

puts pow(2, 3) #returns 2 ^ 3

#Comments should be taught earlier in the lesson

=begin
    block comments
    use these key words
=end 

# Reading Files 

File.open("employees.txt", "r") do |file|
    #puts file

    #puts file.read()

    #puts file.read().include? "Jim,"

    puts file.readline()
    puts file.readline()

    puts file.readchar()
    puts file.readchar()
    puts file.readchar()

    for line in file.readlines()
        puts (line + "***")
    end
end

file = File.open("employees.txt", "r")

puts file

file.close()

File.open("employees.txt", "a") do |file|
    file.write("\nOscar, Accounting")
end

#File.open("employees.txt", "w") do |file|
#    file.write("Angela, Accounting")
#end

File.open("index.html", "w") do |file|
    file.write("<h1>Hello World<h1>")
end

# Error handling

lucky_nums = ["Something"]

begin
    num = 10 / 0
    lucky_nums["dog"]
rescue ZeroDivisionError
    puts "Division By Zero"
rescue TypeError => error
    puts ("Wront Type" + error)
end

