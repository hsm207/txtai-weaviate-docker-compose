from datasets import load_dataset
import requests

URL = "http://localhost:8000"

ds = load_dataset("ag_news", split="train")

payload = {
    "name": "index",
    "elements": ds["text"]
}

r = requests.post(f"{URL}/workflow", json=payload)