FROM python:3.9.2
WORKDIR /app
COPY ./ /app/
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "-p 4444"]