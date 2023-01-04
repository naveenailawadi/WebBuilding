#!/usr/bin/python3.9
import sys
import logging
logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, "/var/www/MobileFirehouseFitness/")

from website import app as application
