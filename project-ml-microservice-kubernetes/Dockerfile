FROM python:3.8
LABEL maintainer="Udacity"

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt &&\
# hadolint ignore=DL3013
 pylint --disable=R,C,W1203,W1202 app.py

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]