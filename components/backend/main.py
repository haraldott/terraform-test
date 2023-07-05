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


class PartnerRecommendation(BaseModel):
    gtin: str
    partner_email: str


@app.post('/recommend/')
def crumbles(recommendation: PartnerRecommendation):
    return {"result": "ok"}


class FoodSupply(BaseModel):
    gtin: str
    amount_kg: float


@app.post('/foodsupply/')
def crumbles(supply: FoodSupply):
    requests.post(f'http://matcher/recommend/{supply.gtin}')
    return {"result": "ok"}
