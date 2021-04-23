#!/usr/bin/env python
import json

import setuptools

with open('shipper_options/package.json', 'r') as fh:
    pkg = json.load(fh)
    version = pkg['version']
    assert version, 'unable to find version'

setuptools.setup(
    name='ordoro-shipper-options',
    version=version,
    author='Ordoro',
    author_email='developers@ordoro.com',
    description='Ordoro Shipper Options repo',
    packages=setuptools.find_packages(exclude=['*tests*']),
    package_data={'': ['*.json']},
    url='https://www.ordoro.com'
)
