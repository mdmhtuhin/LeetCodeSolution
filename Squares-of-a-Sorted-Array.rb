1# @param {Integer[]} nums
2# @return {Integer[]}
3def sorted_squares(nums)
4    length = nums.length
5    left = 0
6    right = length - 1
7    index = length - 1
8    sorted_nums = [0] * length
9    while left <= right
10        left_sq = nums[left] * nums[left]
11        right_sq = nums[right] * nums[right]
12        if left_sq > right_sq
13            sorted_nums[index] = left_sq
14            left += 1
15        else
16            sorted_nums[index] = right_sq
17            right -= 1
18        end
19        index -= 1
20    end
21    sorted_nums
22end