# Time: 350 ms (0%), Space: 272.7 MB (0%)

# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
    sum = ""
    num.each {|n| sum += "#{n}"}
    sum = sum.to_i + k
    sum.to_s.split("").map{|i| i.to_i}
end