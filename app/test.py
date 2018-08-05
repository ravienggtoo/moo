#!/usr/bin/env python
import requests
import unittest
import os

endpoint = os.getenv("ENDPOINT")


class BaseEndpoint(unittest.TestCase):
    def test(self):
        r = requests.get(endpoint+'/')
        self.assertEqual(r.status_code, 200)
