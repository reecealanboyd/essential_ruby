# frozen_string_literal: true

class Customer
  def initialize(name)
    @name = name.capitalize
  end
end

sarah = Customer.new('sarah')
sarah.name #=> 'Sarah'

# note: A class can have only one constructor, that is a method called initialize. The method is automatically invoked when a new instance of the class is created
