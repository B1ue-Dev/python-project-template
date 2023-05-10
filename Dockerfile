FROM python:3.10.10

# We want stdout
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Add the path to pythonpath
ENV PYTHONPATH "${PYTHONPATH}:/app"

# Install the requirements.
COPY ./requirements.txt /app/requirements.txt
RUN pip3.10 install -r /app/requirements.txt

# Copy over the source files.
COPY ./ /app/

# Start the application/
WORKDIR /app
CMD ["python3.10", "main.py"]
