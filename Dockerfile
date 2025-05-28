FROM python:3.11

#All the comands that follow will be in /code directory
WORKDIR /code

#COPY: source, destination ("." is container)
COPY requirements.txt .

#Running download of libraries in docker
RUN pip install -r requirements.txt 

#Copy the code in container
COPY . .

#Our channel to communicate to the container
EXPOSE 5000

#Every time my container runs, this command will be executed
CMD [ "python", "-m", "flask" , "run", "--host=0.0.0.0" ]