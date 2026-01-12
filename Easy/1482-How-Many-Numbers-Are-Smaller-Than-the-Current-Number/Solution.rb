# Time: 311 ms (13.924800000000058%), Space: 211.2 MB (100%)

# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    answer = []
    nums.each do |num|
        count = 0
        if num > nums.min
            nums.each do |n|
                if num > n
                    count += 1
                end
            end
        end
        answer << count
    end
    answer
            
end