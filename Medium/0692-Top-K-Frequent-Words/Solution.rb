# Time: 106 ms (8.333500000000017%), Space: 211.2 MB (100%)

# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
    fre = {}
    uniq_words = words.uniq
    uniq_words.each do |word|
        fre[word] = words.count(word)
    end
    desired_words = fre.sort_by { |key, value| value }.reverse.to_h
    return desired_words.to_a.sort{|a, b| (b.last > a.last) ? 1 : (b.last < a.last ? -1 : (a.first <=> b.first)) }.to_h.keys.take(k)
end