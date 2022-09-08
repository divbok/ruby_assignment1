# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.combination(2).select { |c| c.sum == number }.any?
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  /^[^aeiou\W]/i.match(string) == nil ? false : true
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  /^(0*1[01]*00|0)$/.match(string) == nil ? false : true
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn,:price
  
  def initialize(isbn,price)
    if isbn.empty? || price <=0 
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%0.2f"%price
  end
end
