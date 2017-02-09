

#nom_ville[zoom>=11][zoom<=15] {       
  
        text-name : [name];
     	text-face-name : 'DejaVu Sans Condensed';
        text-fill : @texte_topo; 
    	text-halo-radius : 2;
    	text-allow-overlap : false;
    	
    	[place='city']{ text-size : 18 ;}
        [place='town']{ text-size : 14 ;}
        [place='village']{ text-size : 12 ;}
  	 
  
    [zoom =11]{    	
    	[place='city']{ text-size : 22 ;}
        [place='town']{ text-size : 16 ;}
        [place='village']{ text-size : 12 ;}
    }
  
    [zoom =12]{     	
    	[place='city']{ text-size : 18 ;}
        [place='town']{ text-size : 15 ;}
        [place='village']{ text-size : 13 ;}
    }
  
  [zoom =13]{     	
    	[place='city']{ text-size : 20 ;}
        [place='town']{ text-size : 16 ;}
        [place='village']{ text-size : 14 ;}
    }
  
 
    
    
 
}


#riviere {
  
  [zoom>=14]{    
    text-name : [name];
  	text-face-name : 'DejaVu Sans Condensed Oblique';
    text-halo-radius : 0.8;    
    text-size : 12 ;
    text-placement : line ;
    text-fill : @texte_fleuve;
    text-allow-overlap : false ; 
    text-min-path-length : 200;
  }
  
 } 





#toponymie_routes {
  
[route_rouge='oui'][tunnel='non']{   
   [zoom>=14]{    
    text-name : [name];
  	text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius : 2;    
    text-size : 12 ;
    text-placement : line ;
    text-allow-overlap : false ;      
    } 
    
    
    
  
  }
  
  
[route_jaune='oui']{
    [zoom >=15]{
    text-name : [name];
  	text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius : 2;
    text-halo-fill : @route_jaune;
    text-size : 11 ;
    text-placement : line ;
    text-allow-overlap : false;   
	}
    [zoom >=15][dsc='oui']{text-allow-overlap : true; text-halo-fill:@dsc;} 
}  
  
  
[route_blanche='oui']{
    [zoom >=16]{
      text-name : [name];
  	  text-face-name : 'DejaVu Sans Condensed';
      text-halo-radius : 2;
      text-size : 12 ;
      text-placement : line ;
      text-allow-overlap : true;
      text-fill : gray - 80% ;   
	}
    [zoom >=16][dsc='oui']{text-allow-overlap : true;text-halo-fill:@dsc;} 
     
    
}
  
[highway='pedestrian']{      // ------------ rue pietonne
    [zoom >=16]{
    text-name : [name];
  	text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius : 2;
    text-size : 11 ;
    text-placement : line ;
    text-allow-overlap : false;
    text-fill : gray - 30% ;
   
   
	}
}  
  
  [chemin_simple='oui']{
    
     [zoom >=16]{
    text-name : [name];
  	text-face-name : 'DejaVu Sans Condensed';
    text-halo-radius : 2;
    text-size : 11 ;
    text-placement : line ;
    text-allow-overlap : false;
    text-fill : gray - 30% ;
   
   
	}

  
  }    
 
  
  
}  
