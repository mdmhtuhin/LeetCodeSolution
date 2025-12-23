# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = (nums1 + nums2).sort
    (nums[ (nums.length - 1) / 2] + nums[nums.length / 2]) / 2.0
end