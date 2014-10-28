Map { background-color: @land; } //TODO change base.mss map background to water,
// and turn on land shapes

//@standard_line:     #333; //footway
//@standard_fill:     #fff;
//@standard_case:     #333 * 0.9;

@road_line: 	@primary_line;
@road_fill: 	@primary_fill;
@road_case: 	@primary_case;

@motorway_line: 	@primary_line;
@motorway_fill: 	@primary_fill;
@motorway_case: 	@primary_case;

@trunk_line: 		@primary_line;
@trunk_fill: 		@primary_fill;
@trunk_case: 		@primary_case;

@secondary_line: 		@primary_line;
@secondary_fill: 		@primary_fill;
@secondary_case: 		@primary_case;

@footway_line:     #ce9457;
@footway_fill:     #ce9457;
@footway_case:     #ce9457;

// residential street


#subway_stations::subway[zoom>=10] {
 text-face-name:@sans;
 text-fill: #ff5555 * 0.6;
 text-halo-radius: 1.5;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;

    [zoom>=10]{ text-size: 7; }
    [zoom>=15]{ text-size: 15; }
}




#roads_high::outline[zoom>=11][zoom<=20]{
line-color:  @road_case;
  }
#roads_high::outline[zoom>=11][zoom<=20][stylegroup='noauto']{
line-width:  0;
  }

#roads_high[zoom>=11][zoom<=20]{
line-color:  @road_fill;
  }

#footways[zoom>=16] {
    line-color: @footway_fill;
    line-width: 1.3;
    line-dasharray: 0;
}


#footway_area[zoom>16]['layer'>-1]{
  polygon-opacity:0.70;
  polygon-fill:@footway_fill;
}


#platforms,#platforms_line2buffers[zoom>=14]{
    polygon-fill: #ff5555;
  }

#tunnel_footways[zoom>15] {
  line-width:4;
  line-color:#740000;
  line-dasharray:2,2;
}

#tunnel_footways_area[zoom>16] {
  polygon-fill: #740000;
}

#subway_entrances[zoom>15] {
  marker-width:13;
  marker-fill:#f45;
  marker-file:url('img/walking.n.12.png');
  marker-line-color:#813;
  marker-allow-overlap:true;
}

#bus_stops[zoom>15] {
  marker-width:15;
  marker-file:url('img/5.16_Russian_road_sign.svg');
  marker-allow-overlap:true;
}

#bus_stops[zoom>16] {
 text-face-name:@sans;
 text-fill: #5555ff * 0.6;
 text-halo-radius: 1.5;
 text-size: 9;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 text-placement-type: simple;
}

#highway_area[zoom>=17] {
  line-color:@primary_case;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@primary_fill;
}


#shops[zoom>15] {
  marker-width:25;
  marker-file:url('img_m4all/nicolasmollet/supermarket.png');
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}

#shops[zoom>16] { //Подписи магазинов
 text-face-name:@sans;
 text-fill: #555555 * 0.6;
 text-halo-radius: 1.5;
 text-size: 9;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 text-placement-type: simple;
}


#amenity {
[amenity='bank'] {
    marker-width:32;
    marker-file:url('img_m4all/nicolasmollet/bank_euro.png'); 
    }
 [amenity='atm'] {
    marker-width:32;
  	marker-file:url('img_m4all/nicolasmollet/atm_euro.png');
    }
  
  
  // FOOD
    [amenity='fast_food'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/fastfood.png'); 
    }
      [amenity='restaurant'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/restaurant.png'); 
    }
      [amenity='cafe'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/restaurant.png'); 
    }
      [amenity='bar'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/bar.png'); 
    }
      [amenity='pub'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/bar.png'); 
    }
        [amenity='biergarten'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/bar.png'); 
    }
  
  
  //hospitals
      [amenity='hospital'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/hospital-building.png'); 
    }
        [amenity='clinic'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/hospital-building.png'); 
    }

  
  //ENTERTAIMENT
  
            [amenity='cinema'] {
    marker-width:15;
 	 marker-file:url('img_m4all/thenounproject/pd/icon_79287.svg'); 
    }
              [amenity='theatre'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/theater.png'); 
    }
              [amenity='club'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/theater.png'); 
    }
  
  /* СОЦИОБЛЯДИ НЕ НУЖНЫ
              [amenity='nightclub'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/test.png'); 
    }
  */  
  [amenity='arts_centre'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/theater.png'); 
    }
              [amenity='community_centre'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/museum_paintings.png'); 
    }
              [amenity='social_centre'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/museum_paintings.png'); 
    }
  
  
// Shop-like  
          [amenity='pharmacy'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/drugstore.png'); 
    }
          [amenity='toilets'] {
    marker-width:15;
 	 marker-file:url('img_m4all/aiga/Toilets_unisex.svg'); 
    }
            [amenity='embassy'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/embassy.png'); 
    }
              [amenity='bus_station'] {
    marker-width:15;
 	 marker-file:url('img_m4all/aiga/Aiga_bus_inv.svg'); 
    }
  }
#amenity[zoom>10]  {

	[amenity='bank']
    ,[amenity='atm']
    ,[amenity='fast_food']
    ,[amenity='restaurant']
    ,[amenity='cafe']
    ,[amenity='bar']
    ,[amenity='pub']
	,[amenity='biergarten']
    ,[amenity='hospital']
    ,[amenity='clinic']
    ,[amenity='cinema']
    ,[amenity='theatre']
    ,[amenity='arts_centre']
    ,[amenity='community_centre']
    ,[amenity='social_centre']
    ,[amenity='pharmacy']
    ,[amenity='embassy']
    ,[amenity='bus_station'] 
    {
  
 //Подписи магазинов
 text-face-name:@sans;
 text-fill: #aaaaaa * 0.6;
 text-halo-radius: 1.5;
 text-size: 9;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 text-placement-type: simple;
  
}  
}

