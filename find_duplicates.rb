def find_duplicate(numbers)
	previous_num = 0
    numbers.each do |number|
        if number == previous_num
            return number
        else
            previous_num = number
        end
    end

    return "no duplicates found"
end
