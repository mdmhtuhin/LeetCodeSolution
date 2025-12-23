// Time: 8 ms (71.14%), Space: 211.72 MB (10.98%)

/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    let k = 0;
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] !== val) {
            nums[k] = nums[i];
            k++;
        }
    }
    return k;
};