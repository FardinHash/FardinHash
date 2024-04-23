FROM python:3.9

WORKDIR /app
COPY . .

# Install pandoc
RUN apt-get update && apt-get install -y pandoc

# Convert README.md to HTML
RUN pandoc -f markdown -t html -o index.html README.md

EXPOSE 80
CMD ["python", "-m", "http.server", "80"]
