class Solution(object):
    def lengthOfLongestSubstring(self, s):
        dict1 = {}
        left = 0
        max_length = 0

        for i, j in enumerate(s):
            if j in dict1 and dict1[j] >= left:
                left = dict1[j] + 1

            dict1[j] = i
            max_length = max(i - left + 1, max_length)

        return max_length
        