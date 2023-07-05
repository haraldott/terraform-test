from typing import Annotated

from fastapi import FastAPI, Form
from starlette.responses import FileResponse

import requests

app = FastAPI()


@app.get("/")
async def read_index():
    return FileResponse('index.html')


@app.get("/health/")
def healthcheck():
    return {"Health": "Ok"}


@app.get('/foodsupply/')
async def foodsupply(gtin: Annotated[str, Form(default=None)], amount_kg: Annotated[float, Form(default=None)]):
    response = requests.post(f'http://backend/foodsupply/', json={"gtin": gtin, "amount_kg": amount_kg})
    if response.status_code != 200:
        return {"error": "backend error"}
    return {"result": "ok"}
