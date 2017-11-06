# is the string balanced?
# balanced?("([])") == true
# balanced?("([)]") == false

def balanced?(string)
  split_string = string.split("")
  return false if split_string.length % 2 != 0
  mid = split_string.length / 2
  first_half = split_string[0..mid - 1]
  second_half = split_string[mid..-1]
  i = 0
  while i < mid
    if first_half[i] != second_half[i]
      return false
    end
  end
  return true
end

# using a hash is better bc constant lookup time

def balanced?(string)
  valid_syntax = {'{' => '}', '[' => ']', '(' => ')'}
  has_appeared = []

  string.each_char do |char|
    if valid_syntax[has_appeared[-1]] == char
      has_appeared.pop
    else
      has_appeared.push(char)
    end
  end
  has_appeared.empty?
end

