def find_median_sorted_arrays(nums1, nums2)
  sorted_array = sort_arrays(nums1, nums2)
  midpoint = sorted_array.length / 2

  if sorted_array.length % 2 == 1
    return sorted_array[midpoint].to_f
  else
    return ((sorted_array[midpoint - 1] + sorted_array[midpoint]) / 2.0).to_f
  end
end

def sort_arrays(arr1, arr2)
  num_count = []
  sorted_array = []

  arr1.each do |num|
    if num_count[num]
      num_count[num] += 1
    else
      num_count[num] = 1
    end
  end

  arr2.each do |num|
    if num_count[num]
      num_count[num] += 1
    else
      num_count[num] = 1
    end
  end

  num_count.each_with_index do |count, num|
    count.times { |x| sorted_array << num } if count
  end

  return sorted_array
end
