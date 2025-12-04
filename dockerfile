#use official python runtime as parent image 
FROM python:3.11-slim


# set the working directory in the container

WORKDIR /app

# copy the current directory into the container /app

COPY . /app

#install any needed packages specified in requirement.txt

RUN pip install --no-cache-dir  -r requirements.txt


# make  a export port to outside container 
EXPOSE 5000


# #DEFINE ENV VARIABLE
# ENV FLASK_APP=app.py


ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000


# # run the flask app
CMD ["flask","run","--host=0.0.0.0"]

# final line
# CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]
