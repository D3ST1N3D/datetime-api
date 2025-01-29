# Datetime API


This repository contains:
1. A **FastAPI** application (written in Python 3.12) that returns the current date/time.  
2. A **Dockerfile** that uses the `python:3.12-slim` base image to build and containerize the FastAPI application.  

---

## FastAPI Application

### Overview

- **Language**: Python 3.12
- **Framework**: FastAPI
- **Endpoints**:
  - `GET /`   

### Files

- **`main.py`**  
  Contains the FastAPI application code.
  
- **`requirements.txt`**  
  Lists dependencies required by the Python application.

- **`Dockerfile`**  
  Defines how to build the Docker image using `python:3.12-slim`.

---

## Build and Test

### Running App Locally (Without Docker)
You can configure a python virtual environment to use locally in order to keep packages from being installed globally on the system.

1. **`install dependencies`**
    ```bash
    pip install -r requirements
    ```

2. **`running locally`**
    ```bash
    uvicorn main:datetime_app --host localhost --port 8000
    ```
3. **`testing locally`**
    ```bash
    curl localhost:8000/
    ```
 
### Building and Running Docker
1. **`Build image`**

    ```bash
    docker build -t datetime-api .
    ```

2. **`Run Docker Image`**

    ```bash
    docker run -d -p 8000:8000 --name datetime_api datetime-api
    ```

3. **`testing locally`**
    ```bash
    curl localhost:8000/
    ```
---