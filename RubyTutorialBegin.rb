puts  "Hello Mohsen 1-"
print "Hello Mohsen 2-"
puts  "Hello Mohsen 3-"
puts " Hello Mohsen 4-"

#----------- Variable -------------
puts "--------------------Variable------------------------"
character_name =  "mack"
character_age  =  "33"

puts  ('character_name1.......'+ character_name)

puts  ('character_age1.......'+ character_age)

character_name =  "jack"
character_age  =  "355"

puts  ('character_name2.......'+ character_name)

puts  ('character_age2.......'+ character_age)

#----------- Data Type -----------
puts "---------------------Data Type-----------------------"
name = "mohsen"
occupation = "programmer"

age = 19
age_n = -19

avrage = 15.25
avrage_n = -15.25

isCheck = true
isActive = false

null = nil

# ------ Work with String --------
puts "--------------------Work with String------------------------"
puts "mohsen\" zanganeh 1"
puts "mohsen\n zanganeh 2"

name = "     Mohsen Zanganeh"
age = "11"
puts age.to_i + 5.6             #print (16.6)
avg = "32.6"
puts avg.to_f + 7.4             #print (40)
puts (name +" " + 9.to_s)       #print (Mohsen Zanganeh 9)

puts name.upcase()              #print (     MOHSEN ZANGANEH)
puts name.downcase()            #print (     mohsen zanganeh)
puts name.strip()               #print (Mohsen Zanganeh)
puts name.length()              #print (20)
puts name.include? "Zanganeh"   #print (true)
name = name.strip()
puts name[0]               #print (M)
puts name[0,6]             #print (Mohsen)
puts name.index("M")       #print (0)
puts "Mohsen".index("M")   #print (0)
puts 9 + 3   #print (12)
puts 9 / 3   #print (3)
puts 9**3    #print (729)
puts 9%3     #print (0)

puts -9.abs()         #print (9)
puts 9.20.round()     #print (9)
puts 9.20.ceil()      #print (10) 
puts 9.90.floor()     #print (9) 


puts Math.sqrt(16)     #print (4.0) 
puts Math.log(16)      #print (2.772588722239781) 

# ---------- Getting User input -------
puts "--------------------Getting User input----------is Comment------------"
# name = gets
# puts ("Hello:"+name + ", your Welcom") 
#print: Hello:name (new Line)
#, your welcom
# name = gets.chomp()
# puts ("Hello:"+ name + ", your Welcom")
#print: Hello:name , your welcom

# ---------- Building A Mad Libs Game -------
puts "----------------Building A Mad Libs Game----------is Comment-----------"
# puts "Enter A Color: "
# color = gets.chomp();
# puts "Enter A Celebrity: "
# celebrity = gets.chomp();

# puts ("Roses are "+ color)
# puts ("I Love "+ celebrity)

# ---------- Arrays -------
puts "----------------Arrays---------------------"
friends = Array['mohsen','Ali',2,true]

puts friends 
#print 
# mohsen
# Ali
# 2
# true

print "1-"
puts friends [0] #print mohsen
print "2-"
puts friends [0,2]
#print
# mohsen
# Ali
print "3-"
puts friends [-1] #print true

friends[0] = "hamid"
puts friends [0] #print hamid


products = Array.new
products[0] = "Mobil"
products[2] = "Labtab"
products[4] = "Camputer"
puts products
# print
# Mobil
#
# Labtab
#
# Camputer

puts products.length() #print 5

puts products.include? "Labtab" #print true


puts products.reverse()
# print
# Camputer
#
# Labtab
#
# Mobil
Category = Array["Sony","Hp","LG","IPhon"]
puts Category.sort()
# print
# Hp
# IPhon
# LG
# Sony


# ---------- Hashes -------
puts "----------------Hashes---------------------"
states = {
    :AliAbad => "AA",
     1       => "Gg",
     :Sary    => "Sr",
}

puts states[1]         #print: "Gg"
puts states[:AliAbad]  #print: "AA"


# ---------- Methods -------
puts "----------------Methods--------------------"
def sayhi(name, age = 5)
    puts ("Hello " + name + " My Age:" + age.to_s)
end

sayhi("mohsen", 19) #print: "Hello mohsen My Age:19"

sayhi("mohsen")     #print: "Hello mohsen My Age:5"

def sum(n1,n2)
    n1 + n2
    22
end

puts sum(1,33) #print: 22

def sum(n1,n2)
   return n1 + n2
   puts "hiiiiii"
end

puts sum(1,33) #print: 34

def sum(n1,n2)
    return n1 + n2 , 20
 end
 
 puts sum(1,33) 
 #print: 
 # 34
 # 20

 def sum(n1,n2)
    return n1 + n2 , 20
 end
 
 puts sum(1,33)[1]
 #print: 
 # 20


# ----------if Statement-------
puts "----------------if Statement--------------------"

isChack  = true
isActive = false 
if isChack == false and isActive == false
    puts "Check is false1"
else 
    puts "Check is True1"
end

if isChack == false or isActive == false
    puts "Check is false2"
 else 
     puts "Check is True2"
 end

 if isChack and isActive
    puts "Check is false3"
 elsif isChack and !isActive 
     puts "Check is True3"
 end


 # ----------Case Experession-------
puts "----------------Case Experession--------------------"
def get_day_name(day)
    day_name = ""
    case day
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    else
        day_name = 'Invalid abbreviation'
    end
    return day_name
end

puts get_day_name("mon")  #print: Monday

puts get_day_name("aaa")  #print: Invalid abbreviation


 # ----------While Loops-------
 puts "----------------While Loops--------------------"
index = 1

while index <= 5
    puts index
    index += 1
end

 # ----------for Loops-------
 puts "----------------for Loops--------------------"

 friends = ["mohsen","ali","amir","hamid","ahmad"]

 puts 'for in------>'
 for friend in friends do
     puts friend
 end
 puts 'each------>'
 friends.each do |friend|
    puts friend
 end

 puts 'for index1------>'
 for index in 0..10
    puts index 
 end

 puts 'for index2------>'
10.times do |index|
  puts index
end


 # ----------Exponent Method-------
 puts "----------------Exponent Method--------------------"

 def pow(base_num,pow_num)
    result = 1;
    pow_num.times do |index|
     result = result * base_num
    end
    return result
 end

puts "Result:" + pow(5,2).to_s;

 # ----------Comments-------
 puts "----------------Comments--------------------"
=begin
 
def pow(base_num,pow_num)
    result = 1;
    pow_num.times do |index|
     result = result * base_num
    end
    return result
 end

=end
# puts "Result:" + pow(5,2).to_s;


 # ----------Reading File-------
 puts "----------------Reading File--------------------"

 File.open("files/test.txt","r") do |file|
   puts file.read()
 end
 puts "Read The All file"

 File.open("files/test.txt","r") do |file|
    puts file.read().include? "mohsen" #print true
  end
  puts "Search to mohsen and return true"

 File.open("files/test.txt","r") do |file|
    puts file.readline()
    puts file.readline()
  end

 puts "Read The Tow Line of File"
#print 
#  *********************
# mohsen

File.open("files/test.txt","r") do |file|
    puts file.readlines()
  end

 puts "Read The All line"
#print 
#  *********************
# mohsen

 # ----------Error Handling-------
 puts "----------------Error Handling--------------------"
 person = [2,1,5]
 
 begin
     person["ddddd"]
 rescue TypeError => e
    puts "ERROR: " 
    puts e
     
 end


 # ----------Classes and Object-------
 puts "----------------Classes and Object--------------------"
  class User
    attr_accessor :name,:username,:password,:phon
  end

  user = User.new()

  user.name = "mohsen"
  user.username = "mohsen80"
  user.password = "123"
  user.phon  = 9901759179
  
  
  puts user.username
 
   # ----------Initialize Method-------
 puts "----------------Initialize Method--------------------"
 class User
   attr_accessor :name,:username,:password,:phon
   def initialize(name)
       puts "Hello " + name
   end
 end

 user = User.new("mohsen")


 class User2
    attr_accessor :name,:username,:password,:phon
    def initialize(name,username, password , phon)
        @name = name
        @username = username
        @password = password
        @phon = phon
    end
  end
 
  user2 = User2.new("mohsesssn","mohsen80","123",9901759179)

  puts user2.name



     # ----------Object Method-------
 puts "----------------Object Method--------------------"
 class Person
   attr_accessor :name,:username,:password,:phon
   def initialize(name,username, password , phon)
    @name = name
    @username = username
    @password = password
    @phon = phon
   end

   def has_username
    if !@username
     return false;
    else
      return @username    
    end
   end
 end

 person = Person.new("mohsesssn","mohsen80","123",9901759179)

 puts person.has_username



  # ----------Inharitance-------
  puts "----------------Inharitance--------------------"
  class Person3
    attr_accessor :name,:username,:password,:phon
    def has_username
       return "he is Mohsen"
    end
  end

  class Chef < Person3

    def isChef
        return "is chef."
    end

  end
  chef = Chef.new()
  puts chef.has_username #print: It is Mohsen

  class Person4
    attr_accessor :name,:username,:password,:phon
    def has_username
       return "he is Mohsen"
    end
  end

  class Chef2 < Person4

    def has_username
        return "he is Ali"
    end

  end


  chef2 = Chef2.new()
  puts chef2.has_username #print: he is Ali



  class Dog  
    def initialize(breed)  
      @breed = breed  
    end  
  end  
    
  class Lab < Dog  
    def initialize(breed, name)  
      super(breed)  
      @name = name  
    end  
    
    def to_s  
      "(#@breed, #@name)"  
    end  
  end  
    
  puts Lab.new("Labrador", "Benzy").to_s  

  
  # ----------Module-------
   puts "----------------Module--------------------"
    require_relative './files/testmodule.rb'

    include Tools
    Tools.Say_Hello("mohsen")
    

  # ----------Instance Variables-------
   puts "----------------Instance Variables--------------------"
    class Car 
      def initialize()
        @name = "mohsen"
      end
      def get_name
        return "Hello " + @name
      end
    end
  
    car = Car.new # or you can write car = Car.new()
    puts car.get_name
