=begin

Euler Project Problem 2

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

=end

total = 0
fib = []
fib[0] = 0
fib[1] = 1

for i in 2..35
	fib[i] = fib[i-2] + fib[i-1]
	if fib[i] < 4000000 and fib[i] % 2 == 0
		total += fib[i]
		puts fib[fib.length-1]
	end
end

puts total
