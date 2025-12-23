/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    const symbolValue = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  };

  let l = s.length - 1;
  let result = 0;
  let i = 0;

  while (i <= l) {
    if (i === l) {
      result += symbolValue[s[i]];
      i++;
    } else {
      if (symbolValue[s[i]] < symbolValue[s[i + 1]]) {
        result += symbolValue[s[i + 1]] - symbolValue[s[i]];
        i += 2;
      } else {
        result += symbolValue[s[i]];
        i++;
      }
    }
  }

  return result;
};