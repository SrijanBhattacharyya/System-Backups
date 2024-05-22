#!/usr/bin/python3

import os

mainDir = os.path.dirname(os.path.abspath(__file__))

Dir = mainDir
files = {
    "test1": "test.json",
    "test2": "abc.json"
}

opend_files = {i: open(os.path.join(mainDir, j), 'w') for i, j in files.items()}
