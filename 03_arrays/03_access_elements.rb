%w(a b c)[0] # => 'a'
%w(a b c)[1] # => 'b'

%w(a b c d)[1..2] # => ['b', 'c'] -- (indices from 1 to 2, including the 2)

%w(a b c d)[1...2] # => ['b'] -- (indices from 1 to 2, excluding the 2)

# note: This returns a new array, but doesn’t affect the original.

%w(a b c)[-1] # => 'c'
%w(a b c)[-2] # => 'b'

%w(a b c d e)[1...-1] # => ['b', 'c', 'd']

[1, 2, 3, 4].first # => 1

[1, 2, 3, 4].first(2) # => [1, 2]

[1, 2, 3, 4].last    # => 4

[1, 2, 3, 4].last(2) # => [3, 4]

[1, 2, 3, 4].sample  # => 3 -- access random element in array
[1, 2, 3, 4].sample  # => 1 

[1, 2, 3, 4].sample(2) # => [2, 1]
[1, 2, 3, 4].sample(2) # => [3, 4]