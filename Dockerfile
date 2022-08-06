# Dockerfile 
# Selecting image 
FROM python:3.8

# Add our script "main.py" to our Dockerfile
ADD main.py .

# Installing dependencies ==> look to imported libraries in our script main.py
RUN python3 -m pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN python3 -m pip install requests
RUN python3 -m pip install beautifulSoup4

# Specify the entry command when we start our container
CMD ["python", "./main.py"]



############ To create docker image ##################
#   docker build -t python-imdb .
#   - python-imdb : image name
#   - . : location
########################################################

############ To launch our containered application #####
#   docker build -t python-imdb .
#   $ docker run -ti python-imdb:latest
########################################################

