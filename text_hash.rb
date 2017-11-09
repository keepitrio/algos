def text_hash(string)
    word_map = {};

    string.split(" ").each do |word|
        downcase_word = word.downcase
        if !word_map[downcase_word]
            word_map[downcase_word] = 1
        else
            word_map[downcase_word] += 1
        end
    end

    return word_map
end
