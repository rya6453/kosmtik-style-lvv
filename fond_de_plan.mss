Map {
  background-color: @fond;
  buffer-size: 256;
}



#eau{
polygon-fill:@fleuve;    
}

#riviere{

  line-color:@fleuve;  
  line-width: 2;
  line-join: round;
  
}

#commune [zoom >=12][zoom <=14]{

  line-color:#C759FF;  
  line-width: 1;
  line-join: round;
  line-dasharray : 5, 15,5;



}




#bati{
  [zoom >= 15]{
  
  polygon-fill : @bati_standard ;
  
  [building='school'],
  [building='university'],
  [building='church'],
  [building='cathedral'],
  [amenity='place_of_worship'],
  [amenity='arts_centre'] ,
  [building='hospital'],  
  {polygon-fill : @bati_remarquable ; }
  
  
  
  
  }
  
  
  
  
}



#surfaces {
  
  [zoom > 11] {polygon-fill :@surface;}
  [zoom > 11][landuse = 'forest']{polygon-fill: @surface - 30% ;}
}


#zone_pietonne{
 
  [zoom >14]{
  
 polygon-fill:@fond_pieton;
    line-width:2;
 line-color:@bord_pieton;   
  }
  }
