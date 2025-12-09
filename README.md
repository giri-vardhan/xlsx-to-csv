# XLSX to CSV Converter

This project provides a solution to convert `.xlsx` files to `.csv` format using Docker for a consistent environment. It also includes tests to verify the conversion.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed
- [Docker Compose](https://docs.docker.com/compose/install/) installed

## Setup and Usage

1. **Build the Docker image**  
   ```bash
   docker-compose build
2. # Start container
   ```bash
   docker-compose run task bash
   
3. Check the input file
   ```bash
    ls input/

  You should see something like this 
  sample.xlsx

4. Run the solution script
   ```bash
    bash solution.sh
   
5. Verify the output
  ```bash
  ls output/

   You should see something like this sample.xlsx

6. Run tests
  ```bash
  ./run-tests.sh
