# Use an official Python runtime as a parent image
FROM httpd:2.4.37

# Set the working directory to /app
WORKDIR /var/www/public-html/

# Copy the current directory contents into the container at /app
COPY . /var/www/public-html/

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
#CMD ["curl", "http://localhost:8101"]
#sudo docker run -dit --name running-s28v1 -p 8101:80 s28
