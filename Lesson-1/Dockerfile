FROM python:3.8
WORKDIR /appache
RUN pip install flask
COPY app.py ./app.py
EXPOSE 80
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]
