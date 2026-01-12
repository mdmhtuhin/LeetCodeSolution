# Time: 118 ms (8.695299999999982%), Space: 212.1 MB (100%)

# @param {Integer[]} height
# @return {Integer}
def trap(height)
    start = 0
    finished = height.length - 1
    unit = 0
    start_max = 0
    finished_max = 0
    return 0 if height.length <= 2
    while start < finished
        if height[start] < height[finished]
            if height[start] < start_max
                unit += start_max - height[start]
            else
                start_max = height[start]
            end
            start += 1
        else
            if height[finished] < finished_max
                unit += finished_max - height[finished]
            else
                finished_max = height[finished]
            end
            finished -= 1
        end
        
    end
    unit
    
end