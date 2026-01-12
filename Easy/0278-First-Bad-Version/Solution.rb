# Time: 55 ms (61.81819999999999%), Space: 211.1 MB (85.4545%)

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    first = 1
    last = n
    while first < last
        mid = first + (last - first) / 2
        if is_bad_version(mid)
            last = mid
        else
            first = mid + 1
        end
    end
    first
end