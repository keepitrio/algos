#Write a method
# get_products_of_all_ints_except_at_index()
# that takes an array of integers and returns
# an array of the products.

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
