#!/bin/bash

cd /root/server
gunicorn -k uvicorn.workers.UvicornWorker app:api 
