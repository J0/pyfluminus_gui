#!/bin/bash
if [[ ! -d .env ]];  then
    pip3 install virtualenv
    virtualenv .env
    source ./.env/bin/activate
    python -m pip install --upgrade pip
    pip install -r requirements.txt
    python src/main/python/main.py
else 
    source ./.env/bin/activate
    python src/main/python/main.py
fi
