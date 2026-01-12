# [1651. Shuffle String](https://leetcode.com/problems/shuffle-string/)

**Difficulty:** Easy

**Language:** ruby

### Performance

- **Runtime:** 102 ms (0%)
- **Memory:** 211.1 MB (100%)

## Description

You are given a string `s` and an integer array `indices` of the same length. The string `s` will be shuffled such that the character at the `ith` position moves to `indices[i]` in the shuffled string.

Return the shuffled string.

 
Example 1:

```

Input: s = "codeleet", `indices` = [4,5,6,7,0,2,1,3]
Output: "leetcode"
Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.

```

Example 2:

```

Input: s = "abc", `indices` = [0,1,2]
Output: "abc"
Explanation: After shuffling, each character remains in its position.

```

 
Constraints:


	`s.length == indices.length == n`
	`1 
	`s` consists of only lowercase English letters.
	`0 
	All values of `indices` are unique.

