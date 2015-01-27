 #!/bin/bash         

psql -U trolleway -d gis -c "DROP TABLE planet_osm_line;"
psql -U trolleway -d gis -c "DROP TABLE planet_osm_point;"
psql -U trolleway -d gis -c "DROP TABLE planet_osm_polygon;"
psql -U trolleway -d gis -c "DROP TABLE planet_osm_roads;"

psql -U trolleway -d gis -f functions.sql

#How to write BBOX:
#BBOX from http://boundingbox.klokantech.com/ - LEFT, BOTTOM, RIGHT, TOP (37.3644,55.6616,37.8535,55.8338)
#BBOX for osmosis - TOP, LEFT, BOTTOM, RIGHT



#Moscow
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-MOW.osm.pbf
osm2pgsql --create --multi-geometry --database gis --username trolleway   --style metro4all.style RU-MOW.osm.pbf 
#37.3397,55.5646,37.9029,55.9605 left,bottom,right,top

#Sankt-Peterburg
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-SPE.osm.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style RU-SPE.osm.pbf

#Lausanne
wget -N https://s3.amazonaws.com/metro-extracts.mapzen.com/lausanne_switzerland.osm.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style lausanne_switzerland.osm.pbf

wget -O lausanne_switzerland_lake_geneva.osm -N http://overpass.osm.rambler.ru/cgi/interpreter?data=relation%0A%20%20%5B%22water%22%3D%22lake%22%5D%0A%20%20%2846.456456218244085%2C6.386833190917969%2C46.46470412335403%2C6.407647132873535%29%3B%0A%28._%3B%3E%3B%29%3B%0Aout%20meta%3B
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style lausanne_switzerland_lake_geneva.osm

exit 0

#Glasgow
wget -N https://s3.amazonaws.com/metro-extracts.mapzen.com/glasgow_scotland.osm.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style glasgow_scotland.osm.pbf

#Minsk
wget -N http://data.gis-lab.info/osm_dump/dump/latest/BY.osm.pbf
osmosis --read-pbf file=BY.osm.pbf --bounding-box top=53.9764 left=27.3449 bottom=53.8042 right=27.834  --write-pbf minsk.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style minsk.pbf
rm minsk.pbf

#Volgograd
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-VGG.osm.pbf
osmosis --read-pbf file=RU-VGG.osm.pbf  --bounding-box top=48.8643 left=44.2803 bottom=48.4427 right=44.6971  --write-pbf volgograd.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style volgograd.pbf
rm volgograd.pbf

#Samara
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-SAM.osm.pbf
osmosis --read-pbf file=RU-SAM.osm.pbf  --bounding-box top=53.3083 left=49.869 bottom=53.0532 right=50.4260  --write-pbf samara.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style samara.pbf
rm samara.pbf

#NN
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-NIZ.osm.pbf
osmosis --read-pbf file=RU-NIZ.osm.pbf  --bounding-box top=56.4038 left=43.77 bottom=56.1229 right=44.1542  --write-pbf nn.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style nn.pbf
rm nn.pbf

wget -O RU-NIZ-Volga.osm -N http://overpass.osm.rambler.ru/cgi/interpreter?data=relation%0A%20%20%5B%22water%22%3D%22river%22%5D%0A%20%20%2856.18492886719585%2C43.81622314453125%2C56.40516393682947%2C44.259796142578125%29%3B%0A%28._%3B%3E%3B%29%3B%0Aout%20meta%3B
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style RU-NIZ-Volga.osm

exit 0

#Kazan
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-TA.osm.pbf
osmosis --read-pbf file=RU-TA.osm.pbf --bounding-box top=55.9263 left=48.7641 bottom=55.5983 right=49.3603   --write-pbf kazan.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style kazan.pbf
rm kazan.pbf

#Novosib
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-NVS.osm.pbf
osmosis --read-pbf file=RU-NVS.osm.pbf  --bounding-box top=55.1109 left=82.5749 bottom=54.9272 right=83.1306  --write-pbf novosibirsk.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style novosibirsk.pbf
rm novosibirsk.pbf

#EKB
wget -N http://data.gis-lab.info/osm_dump/dump/latest/RU-SVE.osm.pbf
osmosis --read-pbf file=RU-SVE.osm.pbf  --bounding-box top=57.055842 left=60.195413 bottom=56.724 right=60.8661  --write-pbf ekaterinburg.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style ekaterinburg.pbf
rm ekaterinburg.pbf

#Warshawa
wget -N https://s3.amazonaws.com/metro-extracts.mapzen.com/warsaw_poland.osm.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style warsaw_poland.osm.pbf

#Amsterdam
wget -N https://s3.amazonaws.com/metro-extracts.mapzen.com/amsterdam_netherlands.osm.pbf
osm2pgsql --append --multi-geometry --database gis --username trolleway   --style metro4all.style amsterdam_netherlands.osm.pbf

