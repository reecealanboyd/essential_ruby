# frozen_string_literal: true

class Cat
  def initialize(name, age)
    @name = name
    @age = age
  end

  def speak
    puts "I'm #{@name} and I'm #{@age} years old"
  end

  private

  def calculate_cat_age
    2 * 3 - 4
  end

  # this == method allows us to compare two objects own ages.
  # if both Cat's have the same age they will be considered equal.
  def ==(other)
    own_age == other.own_age
  end

  protected

  def own_age
    age
  end
end

cat1 = Cat.new('ricky', 2) #=> #<Cat:0x007fe2b8aa4a18 @name="ricky", @age=2>

cat2 = Cat.new('lucy', 4) #=> #<Cat:0x008gfb7aa6v67 @name="lucy", @age=4>

cat3 = Cat.new('felix', 2) #=> #<Cat:0x009frbaa8V76 @name="felix", @age=2>

cat1 == cat2 #=> false

cat1 == cat3 #=> true
