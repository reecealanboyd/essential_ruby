# frozen_string_literal: true

# attr_reader: used to allow reading the variable outside the class.
# attr_writer: used to allow modifying the variable outside the class.
# attr_accessor: combines both methods.

class Cat
  attr_reader :age # you can read the age but you can never change it
  attr_writer :name # you can change name but you are not allowed to read
  attr_accessor :breed # you can both change the breed and read it

  def initialize(name, breed)
    @name = name
    @breed = breed
    @age = 2
  end

  def speak
    puts "I'm #{@name} and I am a #{@breed} cat"
  end
end

my_cat = Cat.new('Banjo', 'birman')
# reading values:

my_cat.age #=> 2
my_cat.breed #=> "birman"
my_cat.name #=> Error

# changing values

my_cat.age = 3 #=> Error
my_cat.breed = 'sphynx'
my_cat.name = 'Bilbo'

my_cat.speak #=> I'm Bilbo and I am a sphynx cat

# Note that the parameters are symbols. this works by creating a method.

# class Cat
#   attr_accessor :breed
# end
# Is basically the same as:

# class Cat
#   def breed
#     @breed
#   end
#   def breed= value
#     @breed = value
#   end
# end
