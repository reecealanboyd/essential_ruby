array = [ 1, nil, 'hello', nil, '5', 33]
array.compact # => [ 1, 'hello', '5', 33]

# note: if called on an array with no nil elements, these will return nil
array = [ 'foo', 4, 'life']
array.compact # => nil
array.compact! # => nil