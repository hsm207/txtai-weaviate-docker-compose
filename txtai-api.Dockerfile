# Set base image
ARG BASE_IMAGE=neuml/txtai-cpu:5.1.0
FROM $BASE_IMAGE

# Install dependencies
RUN pip install weaviate-client==3.9.0 \
    weaviate_txtai==0.1.0a3

# Start server and listen on all interfaces
ENTRYPOINT ["uvicorn", "--host", "0.0.0.0", "txtai.api:app"]
