def count_sort(array)
  sort_hash = []
  sorted_array = []

  array.each do |item|
    if !sort_hash[item]
      sort_hash[item] = 1
    else
      sort_hash[item] += 1
    end
  end

  sort_hash.each_with_index do |count, value|
    count.times { |x| sorted_array << value } if count
  end

  return sorted_array
end
