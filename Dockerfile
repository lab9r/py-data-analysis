# Use the official Python image from the Docker Hub
FROM python:3.12-bookworm

# Set the working directory in the container
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Jupyter runs on
EXPOSE 8888

# Set the entrypoint to start Jupyter Notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

# Optionally, you can set a default command to run when the container starts
CMD ["--notebook-dir=/app"]