# Time: 76 ms (0%), Space: 211.2 MB (100%)

# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
    left, right = 0, arr.length - 1
    while left <= right
        mid = (left + right) / 2
        missing = arr[mid] - mid - 1
        if missing < k
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return right + k + 1
end