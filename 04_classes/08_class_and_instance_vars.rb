# frozen_string_literal: true

$total_animals = 0 # global variable example

class Person
    @@persons_created = 0 # class variable, available to all objects of this class
  def initialize(name, age)
    my_age = age # local variable, will be destroyed at end of constructor
    @name = name # instance variable, is only destroyed when the object is
    @@persons_created += 1
  end

  def some_method
    puts "My name is #{@name}." # we can use @name with no problem
  end

  # def another_method
  #   puts "My age is #{my_age}." # this will not work!
  # end

  def how_many_persons
    puts "persons created so far: #{@@persons_created}"
  end 

  def adopt_animal
    $total_animals += 1 
  end
end

mark = Person.new("Mark", 23)

mark.some_method #=> My name is Mark.

helen = Person.new("Helen", 25)

puts mark.how_many_persons #=> persons created so far: 2
puts helen.how_many_persons #=> persons created so far: 2

mark.adopt_animal
mark.adopt_animal
helen.adopt_animal

puts $total_animals