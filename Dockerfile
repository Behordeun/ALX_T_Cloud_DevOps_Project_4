FROM python:3.10.9

## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY . app.py /app/
COPY requirements.txt /app/
COPY model_data/boston_housing_prediction.joblib /app/model_data/
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip3 install pip  --no-cache-dir --upgrade &&\
    pip3 install --trusted-host pypi.python.org --no-cache-dir -r requirements.txt
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
#CMD env FLASK_APP=app.py FLASK_ENV=development flask run --host=0.0.0.0
CMD ["python", "app.py"]
#CMD ["env","FLASK_APP=app.py","FLASK_ENV=development","flask","run","--host=0.0.0.0"]
