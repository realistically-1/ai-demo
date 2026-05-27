from fastapi import FastAPI

application = FastAPI()

@application.get("/health")
def health():
    return {"status": "ok"}