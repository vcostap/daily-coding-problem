def fibonacciSequence(number)
	number > 2 ? (return fibonacciSequence(number-1) + fibonacciSequence(number-2)) : (number == 2 ? (return 2) : (return 1))
end