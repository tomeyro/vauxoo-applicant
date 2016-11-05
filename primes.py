"""
Module for prime number detection
"""


class PrimeClass(object):
    """
    An instance of this class will be able to tell if an int is a prime number
    """

    def is_prime(self, num_int):
        """
        Returns if a given integer is a prime number
        """
        if num_int <= 1:
            return False
        else:
            for divisor in range(2, num_int):
                if num_int % divisor == 0:
                    return False
            return True
