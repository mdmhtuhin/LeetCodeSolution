# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    start = 0
    last = height.length - 1
    area = 0
    while start < last
        s = height[start]
        l = height[last]
        if (s <= l )&& (area < s * (last - start))
            area = s * (last - start)
        elsif (s >= l) && (area < l * (last - start))
            area = l * (last - start)
        end
        if s <= l
            start += 1
        elsif s >= l
            last -= 1
        end
    end
    area    
end