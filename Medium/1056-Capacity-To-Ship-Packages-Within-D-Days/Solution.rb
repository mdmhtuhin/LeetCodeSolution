# Time: 346 ms (57.14289999999999%), Space: 213.5 MB (100%)

# @param {Integer[]} weights
# @param {Integer} days
# @return {Integer}
def ship_within_days(weights, days)
    left, right = weights.max, weights.sum
    while left <= right
        mid = (left + right) / 2
        if can_ship_all(weights, days, mid)
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return left
end

def can_ship_all(weights, days, capacity)
    remaining_capacity = capacity
    day = 1
    for weight in weights do
        if weight > capacity
            return false
        end
        if weight > remaining_capacity
            day += 1
            remaining_capacity = capacity
        end
        remaining_capacity -= weight
    end
    return day <= days
end