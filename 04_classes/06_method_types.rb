# frozen_string_literal: true

class Thing
  def somemethod # instance method
    puts 'something'
  end

  def self.hello(name) # class method
    puts "Hello, #{name}!"
  end

  #   the above is equivalent to:
  #   def Thing.hello(name)
  #     puts "Hello, #{name}!"
  #   end
  #   but it looks like self is the norm

  class << self # the anonymous class
    def ahoy(name)
      puts "Ahoy, #{name}!"
    end
  end
end

foo = Thing.new # create an instance of the class
foo.somemethod # => something

Thing.hello('John Doe') # prints: "Hello, John Doe!"

# two instances of the class
thing1 = Thing.new
thing2 = Thing.new

# create a singleton method
def thing1.makestuff
  puts 'I belong to thing one'
end

thing1.makestuff # => prints: I belong to thing one
# thing2.makestuff # NoMethodError: undefined method `makestuff' for #<Thing>
Thing.ahoy('Sarah')

# another way to singleton method:

class << thing2
  def makestufftoo
    puts 'I belong to only one instance'
  end
  end

thing2.makestufftoo # => prints: "I belong to thing one"
