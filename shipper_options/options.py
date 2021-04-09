import json
from os import path

_f = open(path.join(path.dirname(__file__), 'ShipperOptions.json'), 'r')
shipper_options = json.load(_f)
