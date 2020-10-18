# frozen_string_literal: true

# create a new class dynamically
MyClass = Class.new

# instantiate an object of type MyClass
my_class = MyClass.new

class Animal
  def animal_method; end
end

Dog = Class.new(Animal)

Dog.instance_methods.grep(/animal_method/) # animal_method

Duck =
  Class.new do
    def quack
      'Quack!!'
    end
  end

# instantiate an object of type Duck
duck = Duck.new
duck.quack # 'Quack!!'
