# Handle imports
import random 
import logging 


# Define variables and parameters
logging.basicConfig(
    level=logging.INFO, 
    format='%(asctime)s - %(levelname)s - %(message)s'
    )


# Define functions
def get_random_number() -> int:
    """
    Returns a random number between 0 and 100
    """
    random_number = random.randint(0, 100) 
    return random_number

def square_number(number: int) -> int:
    """
    Returns the square of the input number
    
    args: number (int): The input number to be squared
    
    return: (int): The square of the input number
    """
    
    return number ** 2

