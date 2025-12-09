FROM python:3.10-slim

# Install Python dependencies
RUN pip install pandas openpyxl pytest

# Create workspace directories
RUN mkdir -p /workspace/input /workspace/output

# Copy files into container
COPY sample.xlsx /workspace/input/sample.xlsx
COPY solution.sh /workspace/solution.sh
COPY run-tests.sh /workspace/run-tests.sh
COPY tests /workspace/tests
COPY task.yaml /workspace/task.yaml

# Make scripts executable
RUN chmod +x /workspace/solution.sh /workspace/run-tests.sh

# Set working directory
WORKDIR /workspace
