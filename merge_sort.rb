def merge_sort(array_1, array_2)
  merged_array = []

  i = 0
  j = 0

  while i < array_1.length && j < array_2.length
    if array_1[i] < array_2[j]
      merged_array << array_1[i]
      i += 1
    else
      merged_array << array_2[j]
      j += 1
    end
  end

  while i < array_1.length
    merged_array << array_1[i]
    i += 1
  end

  while j < array_2.length
    merged_array << array_2[j]
    j += 1
  end

  return merged_array
end
