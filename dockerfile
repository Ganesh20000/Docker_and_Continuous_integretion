#use official python runtime as parent image 
FROM python:3.8-slim


# set the working directory in the container

WORKDIR /app

# copy the current directory into the container /app

COPY . /app

#install any needed packages specified in requirement.txt

RUN pip install --no--cache-dir  -r requirement.txt


# make  a export port to outside container 
EXPOSE 5000


#DEFINE ENV VARIABLE
ENV FLASK_APP==app.py


# run the flask app
CMD ["flask","run","--host=0.0.0.0"]