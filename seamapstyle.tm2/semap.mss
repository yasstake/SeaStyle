Map {
    font-directory: url("font/");
    background-color: #aaa;
}

@sans: "Noto Sans CJK JP Regular";

@yellow: #ff0;
@green: #0f0;
@red: #f00;
@white: #ff9;
@land_color: #168;


@sealane: #dce; //198, 128, 255;


[zoom>7]
#man_madeway {
  line-width:1;
  line-color:#168;
  polygon-fill: #168;
}

#land_polygon {
  polygon-fill: @land_color;
  line-width: 1;
  line-color: @land_color;
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

