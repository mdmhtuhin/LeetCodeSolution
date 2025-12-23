/**
 * @param {number[]} height
 * @return {number}
 */
var maxArea = function(height) {
    let start = 0;
  let last = height.length - 1;
  let area = 0;

  while (start < last) {
    const s = height[start];
    const l = height[last];
    const width = last - start;

    if (s <= l && area < s * width) {
      area = s * width;
    } else if (s >= l && area < l * width) {
      area = l * width;
    }

    if (s <= l) {
      start++;
    } else {
      last--;
    }
  }

  return area;
};