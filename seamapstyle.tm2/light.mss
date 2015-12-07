// --------------   LIGHT  ---------------


#light_arc[zoom>9] {

  
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
      text-placement: point;
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
    	[seamark:light:colour="yellow"]{ 
			marker-file: url(img/Light_White_060.svg);   // shoule be yellow   
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

#light::name[zoom>13]
{
  text-allow-overlap: false;
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



