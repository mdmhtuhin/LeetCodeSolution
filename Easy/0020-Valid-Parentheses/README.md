# [20. Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)

**Difficulty:** Easy

**Language:** ruby

### Performance

- **Runtime:** 6 ms (63.457300000000004%)
- **Memory:** 211.8 MB (64.9891%)

## Description

Given a string `s` containing just the characters `&#39;(&#39;`, `&#39;)&#39;`, `&#39;{&#39;`, `&#39;}&#39;`, `&#39;[&#39;` and `&#39;]&#39;`, determine if the input string is valid.

An input string is valid if:


	Open brackets must be closed by the same type of brackets.
	Open brackets must be closed in the correct order.
	Every close bracket has a corresponding open bracket of the same type.


 
Example 1:


Input: s = "()"

Output: true


Example 2:


Input: s = "()[]{}"

Output: true


Example 3:


Input: s = "(]"

Output: false


Example 4:


Input: s = "([])"

Output: true


Example 5:


Input: s = "([)]"

Output: false


 
Constraints:


	`1 4`
	`s` consists of parentheses only `&#39;()[]{}&#39;`.

