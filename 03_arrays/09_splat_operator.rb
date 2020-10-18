# The * operator can be used to unpack variables and arrays so that they can be passed as individual arguments to a method.
# This can be used to wrap a single object in an Array if it is not already:

def wrap_in_array(value)
  [*value]
end

wrap_in_array(1)
#> [1]

wrap_in_array([1, 2, 3])
#> [1, 2, 3]

wrap_in_array(nil)
#> []

# note: splat operator allows nil, single values and arrays to be handled in a consistent manner
def list(*values)
    values.each do |value|
      # do something with value
      puts value
    end
  end
  
  list(100)
  #> 100
  
  list([100, 200])
  #> 100
  #> 200
  
  list(nil)
  # nothing is outputted