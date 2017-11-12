def search(nums, target)
    return -1 if !nums.include?(target)

    return nums.index(target) if nums.include?(target)
end

