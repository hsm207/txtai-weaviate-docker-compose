# Introduction

A demo to show how to deploy a [txtai](https://github.com/neuml/txtai) app using [weaviate](https://github.com/semi-technologies/weaviate) as the document store.

# Prerequisites

1. VS Code
2. Docker

# Usage

1. Use VS Code to open this project in the provided dev container
2. Run `docker-compose up`
3. Run `python index.py` to index some data
4. Refer to [api.http](./api.http) to learn how to work with txtai's `workflow` endpoint to run a semantic search query

Note:

* This [blog post](https://medium.com/@_init_/how-to-quickly-build-a-semantic-search-system-with-txtai-and-weaviate-fd4084e93aaa) has more details about the design of this solution.

