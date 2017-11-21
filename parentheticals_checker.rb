def parentheticals_checker(string, opening_position)
  open_parenthesis = 0

  (opening_position + 1).upto(string.length - 1) do |position|
    char = string[position]

    if char == '('
      open_parenthesis += 1
    elsif char == ')'
      if open_parenthesis == 0
        return position
      else
        open_parenthesis -= 1
      end
    end
  end
end
