#!/bin/bash
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-IN.osm.pbf
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-SMO.osm.pbf

osm2pgsql --create --multi-geometry --database gis --username trolleway  --style metro4all.style RU-IN.osm.pbf RU-SMO.osm.pbf
