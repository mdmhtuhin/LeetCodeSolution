# Time: 0 ms (100%), Space: 211.4 MB (88.5715%)

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    triangle = []
    (0..num_rows-1).each{ |r|
        lst = [1]
        term = 1
        k = 1
        (0..r-1).step(1){|index|
            term = term*(r-k+1)/k
            lst.push term 
            k += 1
        }
        triangle << lst
    }
    triangle
end