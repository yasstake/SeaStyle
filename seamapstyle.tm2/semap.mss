Map {
    font-directory: url("font/");
    background-color: #aaa;
}

@sans: "Noto Sans CJK JP Regular";

@yellow: #ff0;
@green: #0f0;
@red: #f00;
@white: #ff9;


@sealane: #dce; //198, 128, 255;




[zoom>7]
#man_madeway {
  line-width:1;
  line-color:#168;
  polygon-fill: #168;
}

//------------------ SEA LANE ---------------
[zoom>9]
#sealane::lane {
   [type="separation_zone"] {
      line-color: @sealane;
 //     polygon-fill: @sealane;
 	  line-color:#ff0;
  }
  
   [zoom>11] 
   [type="separation_lane"] {
       line-pattern-file: url(img/LaneArrow.svg);
       line-pattern-geometry-transform: scale(0.5, 0.5);
  }
  
   [type="separation_boundary"] {
	  line-width:3;
	  line-dasharray: 5, 5;      
 	  line-color:@sealane;
  } 
}

/*

#aquaculture {
  line-width:1;
  line-color:#168;
}


#fishhome {
  line-width:1;
  line-color:#168;
}

*/

//--------  BUOY  -----------------

#buoys::reflector[zoom>10]
{
  	[seamark:radar_reflector="yes"]
    {
    	marker-allow-overlap: true;
    	marker-file: url(icons/Radar_Reflector_280.png);
    	marker-transform: scale(0.4, 0.4);
    	marker-transform: rotate(15);
    }
  [seamark:radar_transponder:category="racon"]
    {
    	marker-allow-overlap: true;
    	marker-file: url(icons/Radar_Station.png);
    	marker-transform: scale(0.27,0.27);
    }
}


#buoy::float[zoom>10] {  
  [type="buoy_safe_water"]{
     marker-allow-overlap: true; 
   	[seamark:buoy_safe_water:colour_pattern="vertical"]{
    	[seamark:buoy_safe_water:colour="red;white"] {
         	marker-file: url(img/Pillar_Red_White.svg);
        } 
      
        [seamark:topmark:shape="sphere"] {
  //        	marker-file: url(img/Pillar_Red_White.svg);
        }
      
    }
    marker-transform: scale(0.21, 0.21); 

  }
  
  [type="buoy_lateral"]{
     	 marker-allow-overlap: true;
    	[seamark:buoy_lateral:colour="green"]{
 //         	marker-file: url(img/Lateral_Pillar_Green.svg);
   	 	}
    /*
        [seamark:buoy_lateral:colour="red"]{
        	marker-file: url(img/Lateral_Pillar_Red.svg);
      	}
    */
    
    marker-transform: scale(0.25, 0.25);
  }
  
}





#buoy::lights[zoom>12] {
  marker-allow-overlap: true;

  [seamark:light:colour="white"] {
			marker-file: url(img/Light_White_120.svg);
  }
  [seamark:light:colour="green"] {
			marker-file: url(img/Light_Green_120.svg);
  }
  [seamark:light:colour="red"] {
			marker-file: url(img/Light_Red_120.svg);
  }
  [seamark:light:colour="yellow"] {
			marker-file: url(img/Light_White_120.svg);
  }  
  marker-transform: scale(0.2, 0.2);
  [zoom<13] {
      marker-transform: scale(0.15, 0.15);
  }
 }



#buoy::name[zoom>13]
{
  text-allow-overlap: true;
  text-name: '[seamark:name]';
  text-dx: 7;
  text-dy: -3;
  text-face-name:@sans;
 }


#buoy::fixme[zoom>12]
{
  	[seamark:fixme="please_fix_position"]{
     marker-allow-overlap: true;
 	 marker-line-color: #ff0;
 	 marker-line-opacity: 0.8;
     marker-line-width: 1;
 	 marker-width:12;
 	 marker-height: 12;
 	 marker-opacity: 0.2;
 	 marker-fill: #ff0;
	}
}

// -----------  BEACON -----------------

#beacon::cardinal[zoom>10]
{
  [seamark:beacon_cardinal:category="north"]
    {
      marker-allow-overlap: true;
    	marker-file: url("img/Top_North_Beacon.svg");
      	marker-transform: scale(0.25,0.25);
    }
   [seamark:beacon_cardinal:category="south"]
    {
      marker-allow-overlap: true;
    	marker-file: url("img/Top_South_Beacon.svg");
    }
    [seamark:beacon_cardinal:category="east"]
    {
      marker-allow-overlap: true;
    	marker-file: url("img/Top_East_Beacon.svg");
    }
    [seamark:beacon_cardinal:category="west"]
    {
      marker-allow-overlap: true;
    	marker-file: url("img/Top_West_Beacon.svg");
    }
    [zoom>10]
    {
          marker-transform: scale(0.1,0.1);
    }
    [zoom>12]
    {
          marker-transform: scale(0.15,0.15);
    }

}


#beacon::lateral[zoom>10]{
  [type="beacon_lateral"]{
     	 marker-allow-overlap: true;
   		[seamark:beacon_lateral:shape="tower"]{
       	  [seamark:beacon_lateral:colour="green"]{
        	  marker-file: url(img/Tower_Green.svg);
          }
          [seamark:beacon_lateral:colour="red"]{
        		marker-file: url(img/Tower_Red.svg);
      	  }
          [seamark:beacon_lateral:colour="red;white"]{
  //      	marker-file: url(img/Tower_Red_White.svg);//todo
      	  }
          [seamark:beacon_lateral:colour="yellow"]{
        	  marker-file: url(img/Tower_Yellow.svg);
      	  }   
        }
    
       	[seamark:beacon_lateral:shape="pile"]{
    	  [seamark:beacon_lateral:colour="green"]{
          	marker-file: url(img/Beacon_Green.svg);
   	 	  }
          [seamark:beacon_lateral:colour="red"]{
        	marker-file: url(img/Beacon_Red.svg);
      	  }
          [seamark:beacon_lateral:colour="red;white"]{
        	marker-file: url(img/Beacon_Red_White.svg);
          }
          [seamark:beacon_lateral:colour="yellow"]{
        	  marker-file: url(img/Beacon_Yellow.svg);
      	  }
        } 
        marker-transform: scale(0.15, 0.15);
  }
  
  [type="beacon_special_purpose"]{
    marker-allow-overlap: true;
    [seamark:beacon_special_purpose:colour="yellow"]{
        //	marker-file: url(icon/Beacon_Yellow.png);      
    }
    marker-transform: scale(0.3, 0.3); 
  }
  
  [type="beacon_safe_water"]{
     	 marker-allow-overlap: true;
    	[seamark:beacon_safe_water:colour="green"]{
          	marker-file: url(img/Beacon_Green.svg);
   	 	}
        [seamark:beacon_safe_water:colour="red"]{
        	marker-file: url(img/Beacon_Red.svg);
      	}
        [seamark:beacon_safe_water:colour="red;white"]{
        	marker-file: url(img/Beacon_Red_White.svg);
      	}   
    	marker-transform: scale(0.1, 0.1);
  }  
}


// --------------   LIGHT  ---------------

#light::color {
  [zoom>10]{
    	marker-allow-overlap:true;

    	[seamark:light:colour="white"]{
			marker-file: url(img/Light_White_060.svg);
      	}
    	[seamark:light:colour="green"]{
			marker-file: url(img/Light_Green_060.svg);      		
      	}
    	[seamark:light:colour="red"]{ 
			marker-file: url(img/Light_Red_060.svg);      
      	}

        marker-transform: scale(0.1, 0.1);
     }
}



#light::size{
   [zoom>10][type="light_minor"] {
 		 	marker-allow-overlap:true;
    		marker-file: url(img/Light_Minor.svg);  
      		marker-transform: scale(0.1, 0.1);
   }
  [zoom>8][type="light_major"]{
  	marker-allow-overlap:true;
  	marker-file: url(img/Light_Major.svg);
    marker-transform: scale(0.15, 0.15);  
   }
}



#light_arc[zoom>8] {
  [seamark:light_radial<5]
  {
    line-width: 0.5;
    line-dasharray: 2, 3;
    line-color: #777;
  }

  [seamark:light_arc="white"]{
     line-width: 3;
 	 line-color:@white;
 
    [zoom > 11] {
	  text-face-name: @sans;
      text-name: "'W'";
      text-placement: line;
      text-dy:10; 
      text-orientation: 180;
     }
  }
   [seamark:light_arc="red"]{
     line-width: 3;
 	 line-color: @red;
    
    [zoom > 11] {
  	  text-face-name: @sans;
      text-name: "'R'";
      text-placement: line;
      text-dy:10; 
      text-orientation: 180;
     }
  } 
  [seamark:light_arc="green"]{
     line-width: 3;
 	 line-color:@green;

    [zoom > 11] {
      text-face-name: @sans;
      text-name: "'G'";
      text-placement: line;
      text-dy:10; 
      text-orientation: 180;
    }
  }
  [seamark:light_arc="yellow"]{
    line-width: 3;
    line-color: @yellow;
    [zoom > 11]{
  	  text-face-name: @sans;
      text-name: "'Y'";
      text-placement: line;
      text-dy:10; 
      text-orientation: 180;
    }
  }
}

#lights::name[zoom>13]
{
  text-allow-overlap: true;
  text-name: '[seamark:name]';
  text-dx: 7;
  text-dy: -1;
  text-face-name:@sans;
 }

#light::fixme
{
  [zoom>12][seamark:fixme="please_fix_position"]{
     marker-allow-overlap: true;
 	 marker-line-color: #ff0;
 	 marker-line-opacity: 0.8;
     marker-line-width: 1;
 	 marker-width:12;
 	 marker-height: 12;
 	 marker-opacity: 0.15;
 	 marker-fill: #ff0;
　　}
}






