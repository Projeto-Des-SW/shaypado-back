from fastapi import FastAPI

app = FastAPI(
    title="shaypado_back",
)


@app.get("/")
async def root():
    return {"message": "Hello World"}
