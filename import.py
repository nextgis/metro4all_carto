#!/usr/bin/python
# -*- coding: utf8 -*-

import os

os.system('''
osm2pgsql --create --multi-geometry --database gis --username trolleway --password  --style metro4all.style RU-MOW.osm.pbf
''')
