# Import functions to test   
import functions.functions as fn

# Define tests
input_number_to_square = 5

def test_square_number():
    """
    Test the square_number function
    """
    assert fn.square_number(input_number_to_square) == input_number_to_square ** 2
    
def test_square_number_will_fail():
    """
    Test the square_number function
    """
    assert fn.square_number(input_number_to_square) == (input_number_to_square + 2) ** 2
