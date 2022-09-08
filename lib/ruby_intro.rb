# frozen_string_literal: true

# Part 1

def sum(arr)
  #Uses the inbuilt sum method
  arr.sum
end

def max_2_sum(arr)
  #Uses the inbuilt sum method and max(2) chooses the largest two elements
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  #Takes two elements from the array using combination method and compares its sum with the required sum
  arr.combination(2).select { |c| c.sum == number }.any?
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # /i at the end is for ignoring case and ^ before [ is for first character 
  # and ^aeiou\W means it should be a consonant 
  /^[^aeiou\W]/i.match(string) == nil ? false : true
end

def binary_multiple_of_4?(string)
  # logic is it can have multiple 0s in the beginning and followed by a 1 and then multiple 0s and 1s and should end with two zeroes
  # or edge case 0 is also multiple of 4
  /^(0*1[01]*00|0)$/.match(string) == nil ? false : true
end

# Part 3

# Object representing a book
class BookInStock
  # attr_accessor is used for defining both getters and setters in one line
  attr_accessor :isbn,:price
  
  def initialize(isbn,price)
    #using raie to raise an exception if certain conditions are met
    if isbn.empty? || price <=0 
      raise ArgumentError
    end
    #@ is using for instance variable
    @isbn = isbn
    @price = price
  end

  #%0.2f helps in formatting to two decimal places
  def price_as_string
    "$%0.2f"%price
  end
end
