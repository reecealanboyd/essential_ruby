numbers = Array(1..10) # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers = (1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_numbers = (1..10).step(2).to_a # => [1, 3, 5, 7, 9]

even_numbers = 2.step(10, 2).to_a # => [2, 4, 6, 8, 10]

squared_numbers = (1..10).map { |number| number * number } # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

# note: the above methods load eagerly. If you want to load lazily: 

number_generator = (1..100).lazy # => #<Enumerator::Lazy: 1..100>

number_generator.first(10) # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]