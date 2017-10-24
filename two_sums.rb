# https://leetcode.com/problems/two-sum/description/
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

def two_sum(nums, target)
  result = []
  nums.each_with_index do |num, idx|
      find_num = target - num
      result = [idx, nums.index(find_num)] if nums.include?(find_num) && nums.index(find_num) != idx
      return result if result.length > 0
  end

  if result.length == 0
      return "Target sum not found in array"
  end
end
