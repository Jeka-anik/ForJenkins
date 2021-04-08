FROM ubuntu
RUN mkdir -p /app
WORKDIR /app
COPY package*.html /app/
COPY . /app/
EXPOSE 4200
