def merge_arrays(my_array, alices_array)
  merged_array_size = my_array.length + alices_array.length
  merged_array = [nil] * merged_array_size

  my_current_index = 0
  alices_current_index = 0
  current_index_merged = 0

  while current_index_merged < merged_array_size do
    first_unmerged_alices = alices_array[alices_current_index]
    first_unmerged_mine = my_array[my_current_index]

    if first_unmerged_mine < first_unmerged_alices
      merged_array[current_index_merged] = first_unmerged_mine
      my_current_index += 1
    else
      merged_array[current_index_merged] = first_unmerged_alices
      alices_current_index += 1
    end

    current_index_merged += 1
  end

  return merged_array
end

merge_arrays([2], [1])
