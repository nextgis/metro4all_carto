metro4all_carto
===============

Openstreetmap map style from metro4all project for tilemill / mapnik

Tilemill Map style cloned from osm-bright for site metro4all.ru with metro / subway/ lightrail features.

Main diffirences from osm-bright:

 * Metro platforms and pedestrian subways highlited.
 * Addr:housenumbers
 * Main POIs for typical metro residents: shops=* and amenity=* (withouth car features)
 * More attention for pedestrians: Highways for cars marked by only one color, footways are more remarkable.
 * addr:highway rendering
  
## Installation

This folder is a tilemill project. Just put it to ~/Documents/tilemill/projects/

### More detailed installation

* install a [tilemill_version]_dev, or compile.
* git clone this [EXPLAIN]
* download shapefiles from osm-bright installation [EXPLAIN]
* run osm2pgsql [EXPLAIN]
* change database credentials in project.mml An this tool is recommended: [LINK]
* Run tilemill
* Recalculate layer extents
 

## icons copyrights
* [licensename] from nicolasmollet
* public domain from thenounproject
* public domain aisa from wikimedia
