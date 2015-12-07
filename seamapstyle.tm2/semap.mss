Map {
//    font-directory: url("font/");
    background-color: #aaa;
}

@sans: "Clan Offc Pro Book";

@yellow: #ff0;
@green: #0f0;
@red: #f00;
@white: #ff9;
@land_color: #905e08;
@water_color: #7979f6;



@sealane: #dce; //198, 128, 255;

#depcntL{
  line-width: 0.1;
  line-color: #000;
}

[zoom>7]
#man_madeway {
  line-width:1;
  polygon-fill: @land_color;
  line-color: @land_color;
}

[zoom>11]
#land_polygon {
  polygon-fill: @land_color;
  line-color: @land_color;
  line-width: 0.5;
}
[zoom<12]
#land_polygon {
  polygon-fill: @land_color;
  line-color: @land_color;
  line-width: 2;
  line-opacity: 0.8;
  line-join: round;
  line-cap: round;
}

#waterarea {
    polygon-fill: @water_color;
    line-color: @water_color;
    line-width: 0.5;
}

//------------------ SEA LANE ---------------
[zoom>9]
#sealane::lane {
   [type="separation_zone"] {
      line-color: @sealane;
 //     polygon-fill: @sealane;
// 	line-color:#ff0;
    line-width: 4;
//    text-allow-overlap: false;
//    text-name: '[name]';
//    text-placement: 'line';
//    text-dy: 10;
//    text-face-name:@sans;
//    text-orientation: 180;
  }
  
   [zoom>11] 
   [type="separation_lane"] {

    
    //       line-pattern-file: url(img/LaneArrow.svg);
   
//       line-pattern-geometry-transform: scale(0.1, 0.1);
  }
  
   [type="separation_boundary"] {
	  line-width:2;
	  line-dasharray: 5, 5;      
 	  line-color:@sealane;
  } 
}


#fishing_right{
  [C21_002 = "11"]{
   line-width:2;
  line-color:#f44d06;
  polygon-fill: #f00;
  polygon-opacity: 0.1;    
  }
  [C21_002 = "12"]{
  line-width:2;
  line-color:#f44d06;
  polygon-fill: #f00;
  polygon-opacity: 0.1;  }
  [C21_002 = "13"]{
  line-width:2;
  line-color:#f44d06;
  polygon-fill: #f00;
  polygon-opacity: 0.1;  }
  
  [C21_002 = "30"]{
   line-width:1;
  line-color:#ddf406;
  polygon-fill: #fbff00;
  polygon-opacity: 0.1; 
  }
}



