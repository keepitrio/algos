def sort_scores(scores, highest_possible_score)
  score_count = []
  sorted_scores = []

  scores.each do |score|
    if !score_count[score]
      score_count[score] = 1
    else
      score_count[score] += 1
    end
  end

  score_count.each_with_index do |count, score|
    count.times { |x| sorted_scores << score } if count
  end

  return sorted_scores
end
