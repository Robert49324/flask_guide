FROM python:3.8

EXPOSE 5000

COPY requirements.txt /flask_guide/requirements.txt

WORKDIR /flask_guide

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /flask_guide/

CMD ["python", "main.py"]

