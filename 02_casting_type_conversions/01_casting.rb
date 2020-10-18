"123.50".to_f   #=> 123.5
Float("123.50") #=> 123.5

"something".to_f   #=> 0.0
Float("something") # ArgumentError: invalid value for Float(): "something"

123.5.to_s    #=> "123.5"
String(123.5) #=> "123.5"

sprintf("%s", 123.5) #=> "123.5"
"%s" % 123.5 #=> "123.5"
"%d" % 123.5 #=> "123"
"%.2f" % 123.5 #=> "123.50"

"123.50".to_i     #=> 123
Integer("123.50") #=> 123

"123-foo".to_i # => 123
"foo-123".to_i # => 0

"something".to_i     #=> 0
Integer("something") # ArgumentError: invalid value for Integer(): "something"