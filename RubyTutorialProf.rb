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