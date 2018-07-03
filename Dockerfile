FROM python:2
WORKDIR /app

COPY ./ .  
RUN pip install psycopg2-binary
RUN python setup.py install 
VOLUME /data
ENTRYPOINT [ "python", "-m", "Godwit" ]
