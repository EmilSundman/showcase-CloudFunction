import logging
from functions import functions as fn

# Main function
if __name__ == "__main__":
    logging.info("Starting main function")
    try: 
        random_number = fn.get_random_number()
        logging.info(f"Random number: {random_number}")
        squared_number = fn.square_number(random_number)
        logging.info(f"Squared number: {squared_number}")
    except Exception as e:
        logging.error(f"Error: {e}")