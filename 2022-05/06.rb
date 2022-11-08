# Function to return all numbers lower than a given number
def options(number)
  all_options = []
  for i in 2...number do
    all_options.append(i)
  end
  all_options
end

# Function to check if a number is prime or not
def is_prime(number) 
  for i in 2..(number - 1)
    if (number % i) == 0
      return false
    end
  end

  true
end

# Function to return all prime numbers lower than a given number
def prime_numbers(number)
  is_prime = []
  numbers_array = options(number)

  numbers_array.each do |number|
    is_prime(number) ? is_prime.append(number) : next
  end
  is_prime
end

# Given an array, this function will return all possible pairs of numbers
def possible_pairs(primes_array)
  primes_array.combination(2).to_a
end

def lexicographically_smaller(array_solutions)
  first_smaller = array_solutions[0][0]
  answer = array_solutions[0]
  
  array_solutions.each do |solution|
    if solution[0] < first_smaller
      first_smaller = solution[0]
      answer = solution
    end
  end

  array_solutions.each do |solution|
    if solution[0] == answer[0]
      answer = solution[1] < answer[1] ? solution : answer
    end
  end

  puts answer
end

def main(number)
  results = []
  all_prime_numbers = prime_numbers(number)
  all_combinations = possible_pairs(all_prime_numbers)

  all_combinations.each do |combination|
    if combination.sum == number
      results.append(combination)
    end
  end

  lexicographically_smaller(results)
end

main(100)

