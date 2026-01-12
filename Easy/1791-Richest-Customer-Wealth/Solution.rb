# Time: 82 ms (0%), Space: 211.4 MB (87.5%)

# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
    maximum = 0
    accounts.each do |ac|
        maximum = [maximum, ac.sum].max
    end
    maximum
end