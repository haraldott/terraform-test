import requests

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


@app.get("/")
def read_root():
    return {"Health": "Ok"}


@app.get("/health/")
def healthcheck():
    return {"Health": "Ok"}


class ModelWeights(BaseModel):
    values: list
    names: list


@app.post('/recommend/{gtin}/')
async def recommend(gtin: str):
    await return_recommendation(gtin)
    return {"result": "ok"}


async def return_recommendation(gtin: str):
    requests.post(f'http://backend/recommend/', json={"gtin": gtin, "partner_email": "test@test"})


@app.post('/reweight/')
def crumbles(model_weights: ModelWeights):
    return {"result": "ok"}
