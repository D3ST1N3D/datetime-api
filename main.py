from fastapi import FastAPI
from datetime import datetime

# Create APP
datetime_app = FastAPI()

@datetime_app.get("/")
def get_datetime():
    """
    Return the current date/time in ISO format
    """
    return {"datetime": datetime.now().isoformat()}