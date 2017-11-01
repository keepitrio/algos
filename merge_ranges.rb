# Write a method merge_ranges() that takes an array of ranges and returns an array of condensed ranges.

def merge_ranges(ranges)
	ranges.sort!
    merged_ranges = [ranges[0]]
    ranges[1..-1].each do |current_start, current_end|
      last_range_start, last_range_end = merged_ranges[-1]

      if current_start <= last_range_end
        merged_ranges[-1] = [last_range_start, [last_range_end, current_end].max]
      else
        merged_ranges << [current_start, current_end]
      end
    end
    return merged_ranges
end
