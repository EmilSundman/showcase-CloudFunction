# The docker file will define the image that will be used to run the application
# The application squares a random number between 0 and 100
# Nothing more, nothing less


# The image will be based on the official python slim-image
FROM python:3.9-slim

# Update OS
RUN apt-get upgrade -y
RUN pip install --upgrade pip 

# Copy the code
COPY requirements.txt app/
COPY app/ app/

WORKDIR app/

RUN pip install -r requirements.txt

# Entrypoint is the command that will be executed when the container is started
# In this case, the command is to run the python script
ENTRYPOINT ["python", "main.py"]