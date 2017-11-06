require 'set'

def valid?(string)
  validation_map = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }

  openers = validation_map.keys.to_set
  closers = validation_map.values.to_set

  openers_stack = []

  string.chars.each do |char|
    if openers.include?(char)
      openers_stack.push(char)
    else
      if openers_stack.empty?
        return false
      else
        last_unclosed_opener = openers_stack.pop
        if validation_map[last_unclosed_opener] != char
          return false
        end
      end
    end
  end
  return openers_stack.empty?
end
