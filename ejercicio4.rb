# cuando son 3 puntos va del primer numero hasta un numero antes del ultimo
# cuando son 2 va del primer numero hasta el ultimo numero

puts (1...1000).select {|num| num % 3 == 0 || num % 5 == 0}.sum 