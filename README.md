metro4all_carto
===============

Openstreetmap map style from metro4all project for tilemill / mapnik

![current image](https://raw.github.com/nextgis/metro4all_cartostyle/master/metro4all_carto_latest_kurok.png)

Tilemill Map style cloned from osm-bright for site metro4all.ru with metro / subway / ligh trail features.

## Main diffirences from osm-bright:

 * Metro platforms and pedestrian subways highlited.
 * Addr:housenumbers
 * Main POIs for typical metro residents: shops=* and amenity=* (withouth car features)
 * More attention for pedestrians: Highways for cars marked by only one color, footways are more remarkable.
 * addr:highway rendering
  
## Installation

This folder is a tilemill project. Just put it to ~/Documents/tilemill/projects/

### More detailed installation

* install a [tilemill_version]_dev, or compile it from source.
* git clone this [EXPLAIN]
* download shapefiles from osm-bright installation [EXPLAIN]
* get OSM extract (for subway https://mapzen.com/metro-extracts/)
* run osm2pgsql [EXPLAIN]
	osm2pgsql --create --multi-geometry --database gis --username trolleway  --style metro4all.style RU-MOW.osm.pbf 		#create
	osm2pgsql --append --multi-geometry --database gis --username trolleway  --style metro4all.style london_england.osm.pbf		#append
* change database credentials in project.mml An this tool is recommended: [LINK]
* Run tilemill
* Recalculate layer extents
 

## icons copyrights
* [licensename] from nicolasmollet
* public domain from thenounproject
* public domain aisa from wikimedia
