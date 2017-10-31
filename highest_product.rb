# Given an array of integers, find the highest product you can get from three of the integers.

def highest_product(array_of_ints)
  if array_of_ints.length < 3
    raise Exception, 'Less than 3 numbers'
  end

  array_of_ints.map! {|num| num < 0 ? num = num * -1 : num = num}.sort! {|x, y| y <=> x}

  return array_of_ints[0] * array_of_ints[1] * array_of_ints[2]
end
