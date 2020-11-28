#-----------------Work With Modules-------------
puts "----------------Work With Modules----------------"
module Product
    def Somesung
        return "Somesung A30 s"
    end
end

class Phon
    include Product
end

phon = Phon.new()

puts phon.Somesung

#-----------------Method Lookup--------interesting-----
puts "----------------Method Lookup------interesting----------"

module Speak
    def speak(sound)
      puts "#{sound}"
    end
  end
  
  
  class HumanBeing
    include Speak
  end
  
  class GoodDog < HumanBeing
    include Speak
  end

  puts "---GoodDog ancestors---"
  puts GoodDog.ancestors




#-----------------Accessor Methods-------------
puts "----------------Accessor Methods----------------"

class User
    def initialize(name)
        @name = name
    end

    def get_name
        @name
    end

    def set_name=(name)
        @name = name
    end
end

user = User.new("")

user.set_name = "mohsen"

puts user.get_name

#-----------------Private methods-------------
puts "----------------Private methods----------------"

class ExampleClass
    def print_something
      something
    end

    private
    def something
      puts "Hi from private method! "
    end
  end
  new_instance = ExampleClass.new
  new_instance.print_something



#-----------------Static methods-------------
puts "----------------Static methods----------------"
class ExampleClass2
    def self.something
      puts "Hi from Static method! "
    end
  end

ExampleClass2.something

#-----------------Class Variables-------------
puts "----------------Class Variables----------------"
class ExampleClass3
    @@Temp = "Salam "
    def self.something(name)
      puts @@Temp + name
    end
  end
ExampleClass3.something('mohsen')




#-----------------Constants Variables-------------
puts "----------------Constants Variables----------------"

class ExampleClass4
    VALUE = 4

    def self.sum(num)
        num + VALUE
    end
end

puts ExampleClass4.sum(5)




#-----------------Inheritance-------------
puts "----------------Inheritance----------------"
class ExampleClass5
  def speakToMe(name)
  "Hello #{name}"
  end
end


class ExampleClass6 < ExampleClass5
end

exampleClass6 = ExampleClass6.new()
puts exampleClass6.speakToMe('mohsen')

module ExampleClass7
  def speakToYou(name)
  "bye #{name}"
  end
end


class ExampleClass8 < ExampleClass6
  include ExampleClass7

  
end

exampleClass8 = ExampleClass8.new()

puts exampleClass8.speakToYou('mohsen')





#-----------------More Modules-------------
puts "----------------More Modules----------------"
module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

test1 = Mammal::Dog.new
test2 = Mammal::Cat.new

test1.speak('mohyyy')

test2.say_name('mohsen')



#-----------------optional parameters-------------
puts "----------------optional parameters----------------"

class Mohammad
  def speakToYou(name = 'mohsen')
    p "#{name}"
  end
end

mohammad = Mohammad.new
mohammad.speakToYou()


#-----------------Global Variable-------------
puts "----------------Global Variable----------------"

$value1 = "vahid1"
class ExampleClass9
  def test_one
    $value2 = "vahid2"
  end
end
exampleClass9 = ExampleClass9.new
exampleClass9.test_one

puts $value1
puts $value2


#-----------------raise-------------
puts "----------------raise----------------"

# raise "This is an exception"
# raise StandardError.new "This is an exception"

def ExampleMethod do 
yield 1
puts "Hey you can do this"
yield 50
end

ExampleMethod {|num| puts num}


#-----------------closure-------------
puts "----------------closure----------------"

array1 = [1,5,6,7,9,4,55,22,33,4,45,1321,56,4,87,54]

puts (array1.find {|item| item < 50}) #print: 1

proc = Proc.new { "Hello Mohsen" }

puts proc.call   #print: Hello Mohsen


fruit = ["apple", "banana","plum"]

print fruit.map(&:capitalize) #print: ["Apple", "Banana", "Plum"]

puts ' '

  def return_from_lambda
    a = lambda { return 10 }.call
    puts "The lambda returned #{a}, and this will be printed."
  end
  return_from_lambda
#-----------------Symbols-------------
puts "----------------Symbols----------------"

def set_name(name)
 puts name.object_id
  puts "hello #{name}"
end
set_name(:mohsen + :zanganeh)         #print: hello mohsen
 
SymboleHash = {a:1,b:2,c:3}
puts SymboleHash          #print: {:a=>1, :b=>2, :c=>3}
puts SymboleHash[:a]      #print: 1 
puts :ad == "ad"          #print: false  

