# Set base image
ARG BASE_IMAGE=neuml/txtai-cpu:5.1.0
FROM $BASE_IMAGE

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Start server and listen on all interfaces
ENTRYPOINT ["uvicorn", "--host", "0.0.0.0", "txtai.api:app"]
