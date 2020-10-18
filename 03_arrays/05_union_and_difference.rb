x = [5, 5, 1, 3]
y = [5, 2, 4, 3]

x | y #=> [5, 1, 3, 2, 4] -- union -- contains elements from both arrays, with duplicates removed

x & y #=> [5, 3] -- intersection -- contains elements which are present both in first and second array

x - y #=> [1] -- difference -- contains elements which are present in first array and not present in second array