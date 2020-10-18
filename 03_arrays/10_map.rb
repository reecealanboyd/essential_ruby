[1, 2, 3].map { |i| i * 3 } # => [3, 6, 9]

['1', '2', '3', '4', '5'].map { |i| i.to_i } # => [1, 2, 3, 4, 5]

# note: The original array is not modified; a new array is returned
# map! can be used if you want to modify the original array.

# call to_i method on all elements
%w(1 2 3 4 5 6 7 8 9 10).map(&:to_i)
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# using proc (lambda) on all elements
%w(1 2 3 4 5 6 7 8 9 10).map(&->(i){ i.to_i * 2})
# => [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

# note: map is synonymous with collect.