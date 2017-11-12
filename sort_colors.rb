def sort_colors(nums)
    reds = []
    whites = []
    blues = []

    nums.each do |num|
        reds << num if num == 0
        whites << num if num == 1
        blues << num if num == 2
    end

    nums.replace(reds + whites + blues)
end
