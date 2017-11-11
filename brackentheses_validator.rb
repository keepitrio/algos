def valid?(string)
  validation_map = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }

  brackentheses = []

  string.chars.each do |char|
    if validation_map[brackentheses[-1]] == char
      brackentheses.pop
    else
      brackentheses.push(char)
    end
  end

  brackentheses.length == 0 ? true : false
end
