from time import sleep

import requests


data =  {
    "values": [1, 2, 3],
    "names": ["a", "b", "c"]
}

if __name__ == "__main__":
    while True:
        sleep(10)
        response = requests.post('http://matcher/reweight/', json=data)
