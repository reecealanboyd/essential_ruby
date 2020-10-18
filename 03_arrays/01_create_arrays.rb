a = [] # using array literal
a = Array.new # equivalent to using literal
a = Array.new(5) # create an array with 5 elements with value of nil.
a = Array.new(5, 0) # create an array with 5 elements with default value of 0.

array = %w(one two three four) # same as array = ['one', 'two', 'three', 'four']

Array.new 3 #=> [nil, nil, nil]

Array.new 3, :x #=> [:x, :x, :x]

Array.new(3) { |i| i.to_s } #=> ["0", "1", "2"]

b = Array.new(3) { "X" }        # ["X", "X", "X"]
b[1].replace "C"                # b => ["X", "C", "X"]

array = %i(one two three four) #=> [:one, :two, :three, :four]