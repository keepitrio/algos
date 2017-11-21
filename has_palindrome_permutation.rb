require 'set'

def has_palindrome_permutation(the_string)
  appeared_chars = Set.new

  (0...the_string.length).each do |i|
    char = the_string[i]

    if appeared_chars.include?(char)
      appeared_chars.delete(char)
    else
      appeared_chars.add(char)
    end
  end

  return appeared_chars.length <= 1
end
