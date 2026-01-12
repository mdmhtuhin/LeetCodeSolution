# Time: 258 ms (45.71469999999997%), Space: 212.9 MB (100%)

# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
    left = 1
    right = piles.max
    while left <= right
        mid = (left + right)/2
        sums = 0
        piles.each do |pil|
            sums += (pil -1 ) / mid + 1
        end
        if sums > h
            left = mid + 1
        else
            right = mid - 1
        end
    end
    left
end