arr = [1, 2, 3]
a, b, c = arr # a = 1, b = 2, c = 3

a, *b = arr       # a = 1; b = [2, 3] -- * is splat operator

a, *b, c = arr    # a = 1; b = [2]; c = 3

a, b, c, *d = arr # a = 1; b = 2; c = 3; d = []

a, *b, *c = arr   # SyntaxError: unexpected *

# note: Decomposition is safe and never raises errors. nils are assigned where there’s not enough elements, matching the behavior of [] operator when accessing an index out of bounds:

arr[9000] # => nil
a, b, c, d = arr # a = 1; b = 2; c = 3; d = nil

arr = [1, [2, 3, 4], 5, 6]
a, (b, *c), *d = arr # a = 1; b = 2; c = [3, 4]; d = [5, 6] -- decompose nested arrays

a, b = [1, 2]
a, b =  1, 2  # exactly the same

t = a; a = b; b = t # an obvious way
a, b = b, a         # an idiomatic way
(a, b) = [b, a]     # ...and how it works