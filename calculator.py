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
        sum = 0
        for i in num_list:
            sum += i
        return sum
