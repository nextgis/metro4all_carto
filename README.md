metro4all_carto
===============

Openstreetmap map style from metro4all project for tilemill / mapnik

![current image](https://raw.github.com/nextgis/metro4all_cartostyle/master/metro4all_carto_latest_kurok.png)

Tilemill Map style cloned from osm-bright for site metro4all.ru with metro / subway / light rail features.

## Main diffirences from osm-bright:

 * Metro platforms and pedestrian subways highlited.
 * Addr:housenumbers
 * Main POIs for typical metro residents: shops=* and amenity=* (withouth car features)
 * More attention for pedestrians: Highways for cars marked by only one color, footways are more remarkable.
 * addr:highway rendering
  
## Features
 * Платформы метро рисуются красным, если рядом есть точка станции метро. 
 * Иконка системы метро рисуется, если рядом есть точка станции метро с тегами railway=station, station=subway, network=*

## Installation

This folder is a tilemill project. Just put it to ~/Documents/tilemill/projects/

### More detailed installation

This style required TileMill 0.10.2-dev, or build from source. See https://www.mapbox.com/tilemill/docs/source/ for manual building instructions.

Clone this map style

        cd ~/Documents/MapBox/project
        git clone https://github.com/nextgis/metro4all_cartostyle.git

* get OSM extract in osm or pbf formats (for subway: https://mapzen.com/metro-extracts/)
* Import OSM into PostGIS 

        osm2pgsql --create --multi-geometry --database gis --username trolleway  --style metro4all.style RU-MOW.osm.pbf 		#create
        osm2pgsql --append --multi-geometry --database gis --username trolleway  --style metro4all.style london_england.osm.pbf		#append


* change database credentials in ~/Documents/tilemill/projects/metro4all_cartostyle/project.mml This tool is recommended: http://stevage.github.io/tilemill-portability/
* Run tilemill
* Recalculate layer extents
 

## icons copyrights
* [licensename] from nicolasmollet
* public domain from thenounproject
* public domain aisa from wikimedia

### Test overpass query for debug metro station draw

```
<union>
<query type="node">
  <has-kv k="railway" v="station"/>
  <has-kv k="station" v="subway"/>
  <bbox-query {{bbox}}/>
</query>
<query type="node">
  <has-kv k="railway" v="subway_entrance"/>
  <bbox-query {{bbox}}/>
</query>
</union>

<union>
  <item/>
  <recurse type="down"/>
</union>

<print mode="meta"/>
```
