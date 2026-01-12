# [1019. Squares of a Sorted Array](https://leetcode.com/problems/squares-of-a-sorted-array/)

**Difficulty:** Easy

**Language:** ruby

### Performance

- **Runtime:** 15 ms (35.71429999999999%)
- **Memory:** 213.4 MB (27.1429%)

## Description

Given an integer array `nums` sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

 
Example 1:

```

Input: nums = [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Explanation: After squaring, the array becomes [16,1,0,9,100].
After sorting, it becomes [0,1,9,16,100].

```

Example 2:

```

Input: nums = [-7,-3,2,3,11]
Output: [4,9,9,49,121]

```

 
Constraints:


	`1 104`
	`-104 4`
	`nums` is sorted in non-decreasing order.


 
Follow up: Squaring each element and sorting the new array is very trivial, could you find an `O(n)` solution using a different approach?