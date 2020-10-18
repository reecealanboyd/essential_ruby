[1,2,3].reduce(0) {|a,b| a + b} # => 6
[1,2,3].reduce {|a,b| a + b} # => 6 -- If we omit the first argument, it will set a to being the first element in the list
[1,2,3].reduce(0, :+) # => 6 -- instead of passing a block with a function, we can pass a named function as a symbol, either with a starting value, or without
[1,2,3].reduce(:+) # => 6