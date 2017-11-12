def search_range(nums, target)
    return [-1, -1] if !nums.include?(target)

    range = [nil, nil]
    nums.each_with_index do |num, idx|
        range[0] = idx if num == target && range[0] == nil
        range[1] = idx if num == target
    end
    range[1] = range[0] if range[1] == nil

    return range
end
