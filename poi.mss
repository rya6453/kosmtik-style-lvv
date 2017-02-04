

#pkv_velov {  
  
  
  //==============  Arceaux  ==================
  
[amenity='bicycle_parking'][zoom =15]{
    
      marker-width : 4 ;
      marker-fill : @piste;
      marker-line-color :@piste;
    }  

[amenity='bicycle_parking'][zoom =16]{
    
      marker-width : 6 ;
      marker-fill : @piste;
      marker-line-color :@piste;
    
    }
  
  
  
   [amenity='bicycle_parking'][zoom >=17]{      
    
    
    
    //marker-file : url(image/pkv_12x12.png);    
    
    
   marker-file : url('svg/pkv.svg');
   marker-width :12; 
     
    text-name : [capacity];
    text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius :1;
    text-allow-overlap : false;
    text-dx : 8;
    text-dy : 0 ;
    }  
    
  
  ///==============  velov ==================

[amenity='bicycle_rental'][zoom >=15][zoom <=16]{
    
      marker-width : 3 ;
      marker-fill : @velov;
      marker-line-color :@velov;
    
    }  

[amenity='bicycle_rental'][zoom >=17]{
    
     //text-name : "'v'";
     //text-face-name : 'DejaVu Sans Condensed';
    // text-placement  :point;
     marker-file :url(image/velov_11x11.png);
    
    }  
 
}

//============== velociste  ==================

#velociste[zoom>=13][zoom<=18]{
  
  [zoom=13]{
    
      marker-width : 4 ;
      marker-fill : @velociste;
     
      	 
  }  
  
  [zoom=14]{
    
      marker-width : 6 ;
      marker-fill : @velociste;
      marker-allow-overlap : true;	 
  }  
  
  [zoom=15]{
 	 marker-width : 8 ;
     marker-fill : @velociste;
     marker-allow-overlap : true;
    }
  
   [zoom=16]{
 	 marker-width : 10 ;
     marker-fill : @velociste;
     marker-allow-overlap : true;
  }
  
  [zoom>=17]{    
    
 	marker-file : url(svg/velosiste.svg);
    marker-width : 18 ; 
    
    marker-allow-overlap : true ;     
    
    text-name : [name];
    text-size : 11;
    text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius : 2;
    text-allow-overlap : true;
    
    text-dy:-12;    
       
  }   
  
}


//============== ateliers ==================

#ateliers [zoom>=13][zoom<=18]{
  
  [zoom=13]{
    
      marker-width : 4 ;
      marker-fill : @atelier;
     
      	 
  }  
  
  [zoom=14]{
    
      marker-width : 6 ;
      marker-fill : @atelier;
      marker-allow-overlap : true;	 
  }  
  
  [zoom=15]{
 	 marker-width : 8 ;
     marker-fill : @atelier;
     marker-allow-overlap : true;
    }
  
   [zoom=16]{
 	 marker-width : 10 ;
     marker-fill : @atelier;
     marker-allow-overlap : true;
  }
  
  [zoom>=17]{    
    
 	marker-file : url(svg/atelier.svg);
    marker-width : 20 ; 
    
    marker-allow-overlap : true ;     
    
    text-name : [name];
    text-size : 11;
    text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius :1;
    text-allow-overlap : true;
    
   
    text-dy:-12;    
       
  }   
  
}

#mairie {

    [zoom >= 14] {
	
	marker-file : url(svg/mairie.svg);
    marker-width : 16 ;     
    marker-allow-overlap : true ;   
    }
    
    
    
}

