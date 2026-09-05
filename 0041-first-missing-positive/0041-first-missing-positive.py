class Solution(object):
    def firstMissingPositive(self, nums):

        numbers = set(nums)

        n = 1

        while n in numbers:
            n += 1

        return n