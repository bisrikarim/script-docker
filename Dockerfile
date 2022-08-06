# Dockerfile 
# Selecting image 
FROM python:3.8

# Add our script "main.py" to our Dockerfile
ADD main.py .

# Installing dependencies ==> look to imported libraries in our script main.py
RUN pip install request beautifulSoup4

# Specify the entry command when we start our container
CMD ["python", "./main.py"]



############ To create docker image : ##################
#   docker build -t python-imdb .
#   - python-imdb : image name
#   - . : location
########################################################

