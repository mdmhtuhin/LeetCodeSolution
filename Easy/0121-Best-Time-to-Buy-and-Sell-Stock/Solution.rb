# Time: 167 ms (5.243299999999994%), Space: 220.7 MB (100%)

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    low = prices.max
    profit = 0
    prices.each do |price|
        if low > price
            low = price
        elsif price - low > profit
            profit = price - low
        end
    end
    profit
end