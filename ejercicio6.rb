#fibonacci = [1, 2]
#(1..8).each do |numero|
  #fibonacci << fibonacci.last(2).sum
#end
#fibonacci

fibonacci = [1, 2]
while fibonacci.size < 3
  fibonacci << fibonacci.last(2).sum
end

fibonacci

# sacar los pares del fibonacci

fibonacci.select {|num| num.even?}