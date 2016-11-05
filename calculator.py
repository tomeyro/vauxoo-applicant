"""
Module for basic arithmetic operations
"""


class CalculatorClass(object):
    """
    Basic calculator class
    """

    def sum(self, num_list):
        """
        Sum a list of numbers and return the result
        """
        result = 0
        for num in num_list:
            result += num
        return result
