CREATE OR REPLACE FUNCTION m4allshiftstationawayplaftorm(geometry)
  RETURNS double precision AS
$BODY$
    select st_azimuth($1,st_closestpoint(way, $1)) as angle
    from planet_osm_polygon
    where way && st_expand($1, 100)
        and railway = 'platform' 
    order by st_distance(way, $1) asc
    limit 1
$BODY$
  LANGUAGE sql STABLE
  COST 100;
