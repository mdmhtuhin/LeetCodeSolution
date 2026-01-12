# Time: 82 ms (12.5%), Space: 211 MB (100%)

# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    most = 0
    sentences.each do |sen|
        most = [most, sen.split(' ').length].max
    end
    most
end