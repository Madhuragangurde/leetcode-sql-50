class Solution(object):

    def isValid(self, s):
        val = []

        for char in s:

            if char == '(':
                val.append(')')

            elif char == '[':
                val.append(']')

            elif char == '{':
                val.append('}')

            else:
                if not val or val.pop() != char:
                    return False

        return len(val) == 0
        