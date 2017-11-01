def say_hello
  puts 'Hello, World'
end

5.times { say_hello }


#
# Write a function that given a string would print the 'expanded' version of it.
# For example a2[bc2[c]]d  would print out abcccbcccd
# 2[c] -> cc
# ab3[a2[tsdrc]]e
#abaccaccacce
# abdbcaadbcaa
   #  dbcaa
          #a
      ^
def expand_string_internal(split_string, start_index=0)
  return if split_string[start_index] == "]"

  expanded_string = ""
  while start_index < split_string.length
    if /[a-z]/ =~ (split_string[start_index])
      expanded_string += split_string[start_index]
    else
      start_index += 2
      expanded_string += expand_string_internal(split_string, start_index)
    end
    start_index += 1
  end
  return expanded_string
end

def expand_string(string)
  split_string = string.split("")
  expand_string_internal(split_string)
end

# ["a", "2", "[", "b", "c", "2", "[", "c", "]", "]", "d"]
