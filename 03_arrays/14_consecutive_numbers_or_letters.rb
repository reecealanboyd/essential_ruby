(1..10).to_a    #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a_range = 1...5
a_range.to_a       #=> [1, 2, 3, 4]

('a'..'f').to_a    #=> ["a", "b", "c", "d", "e", "f"]

('a'...'f').to_a   #=> ["a", "b", "c", "d", "e"]

[*1..10]           #=> [1,2,3,4,5,6,7,8,9,10]

[*'a'..'f']        #=> ["a", "b", "c", "d", "e", "f"]