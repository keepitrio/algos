#Write a method
# get_products_of_all_ints_except_at_index()
# that takes an array of integers and returns
# an array of the products.

# brute force solution:

def get_products_of_all_ints_except_at_index(array)
  result_array = []
  array.each do |num|
      working_array = array.dup
      working_array.delete(num)
      product = working_array.reduce {|sum, num| sum * num}
      result_array << product
  end

  return result_array
end

# O(n^2) time and O(n) space

# greedy approach

def get_products_of_all_ints_except_at_index(array)

  if array.length < 2
    raise IndexError, 'You need more than 2 integers to get the products'
  end

  products_of_integers_except_current_index = []

  product_so_far = 1
  i = 0
  while i < array.length
    products_of_integers_except_current_index[i] = product_so_far
    product_so_far *= array[i]
    i += 1
  end

  product_so_far = 1
  i = array.length - 1
  while i >= 0
    products_of_integers_except_current_index[i] *= product_so_far
    product_so_far *= array[i]
    i -= 1
  end

  return products_of_integers_except_current_index
end

# O(n) time and O(n) space
