# [72. Edit Distance](https://leetcode.com/problems/edit-distance/)

**Difficulty:** Medium

**Language:** ruby

### Performance

- **Runtime:** 196 ms (11.110700000000021%)
- **Memory:** 212.9 MB (94.4444%)

## Description

Given two strings `word1` and `word2`, return the minimum number of operations required to convert `word1` to `word2`.

You have the following three operations permitted on a word:


	Insert a character
	Delete a character
	Replace a character


 
Example 1:

```

Input: word1 = "horse", word2 = "ros"
Output: 3
Explanation: 
horse -> rorse (replace &#39;h&#39; with &#39;r&#39;)
rorse -> rose (remove &#39;r&#39;)
rose -> ros (remove &#39;e&#39;)

```

Example 2:

```

Input: word1 = "intention", word2 = "execution"
Output: 5
Explanation: 
intention -> inention (remove &#39;t&#39;)
inention -> enention (replace &#39;i&#39; with &#39;e&#39;)
enention -> exention (replace &#39;n&#39; with &#39;x&#39;)
exention -> exection (replace &#39;n&#39; with &#39;c&#39;)
exection -> execution (insert &#39;u&#39;)

```

 
Constraints:


	`0 
	`word1` and `word2` consist of lowercase English letters.

