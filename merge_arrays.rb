# def merge_arrays(my_array, alices_array)
#   merged_array_size = my_array.length + alices_array.length
#   merged_array = [nil] * merged_array_size

#   my_current_index = 0
#   alices_current_index = 0
#   current_index_merged = 0

#   while current_index_merged < merged_array_size do
#     first_unmerged_alices = alices_array[alices_current_index]
#     first_unmerged_mine = my_array[my_current_index]

#     if first_unmerged_mine < first_unmerged_alices
#       merged_array[current_index_merged] = first_unmerged_mine
#       my_current_index += 1
#     else
#       merged_array[current_index_merged] = first_unmerged_alices
#       alices_current_index += 1
#     end

#     current_index_merged += 1
#   end

#   return merged_array
# end

def merge_arrays(my_array, alices_array)
  merged_array = []

  my_current_index = 0
  alices_current_index = 0

  while my_current_index < my_array.length && alices_current_index < alices_array.length
    if my_array[my_current_index] < alices_array[alices_current_index]
      merged_array << my_array[my_current_index]
      my_current_index += 1
    else
      merged_array << alices_array[alices_current_index]
      alices_current_index += 1
    end
  end

  while my_current_index < my_array.length
    merged_array << my_array[my_current_index]
    my_current_index += 1
  end

  while alices_current_index < alices_array.length
    merged_array << alices_array[alices_current_index]
    alices_current_index += 1
  end

  return merged_array
end

merge_arrays([2], [1])
