# Time: 1826 ms (100%), Space: 223 MB (100%)

# @param {Integer[]} time
# @param {Integer} total_trips
# @return {Integer}
def minimum_time(time, total_trips)
    left = 1
    right = time.max * total_trips
    while right > left
        mid = (left + right)/2
        sums = 0
        time.each do |t|
            sums += mid/t
        end
        if sums >= total_trips
            right = mid
        else
            left = mid + 1
        end
    end
    return left  
  
end