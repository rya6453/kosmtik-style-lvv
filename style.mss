

#funiculaire{

    [zoom >14]{
       a/line-color: @funiculaire;
       a/line-width:3; 
       b/line-width:2;
       b/line-color:#000;
       b/line-dasharray : 5,5 ;
    }    
}




#interdit_velo{  
  
 
  [zoom >=15][tunnel='non']{      
    line-color: #F00;
    line-width:1.5;
       line-dasharray : 5,8 ;
     }    
  
  [zoom >=15][tunnel='oui']{      
    line-color: #fa8484; 
    line-width:1.5;
       line-dasharray : 5,8 ;
     }       
 
}  




#route  {  
  
  
	[rail='oui']{  // ================  Rails ================
    
    [tunnel='non']{
      line-color: @rail;
      line-join: round;
      line-width: 1;
      [zoom >=16]{ line-width :2;}
      }    
    
    [tunnel='oui']{
      line-color: @rail + 40%;
      line-join: round;
      line-width: 1;
      line-dasharray : 5,8 ;
      [zoom >=16]{ line-width :2;}
      }
      
    
    [pont='oui']{
    
        line-join: round;
        
        [zoom >=13]{ 
            a/line-width :2;
            a/line-color: @pont;
            b/line-color: @rail;
            b/line-width: 1;            
        } 
        
        [zoom >=16]{ 
            a/line-width :4;
            a/line-color: @pont;
            b/line-color: @rail;
            b/line-width: 2;            
        } 
      
    } 
      
    
   }  // fin rail
  
  
 [autoroute='oui']{ //=================== Autoroute ===============
   
 	[tunnel='non']{
      
      line-color:@autoroute;
      line-cap:round; 
     
      [zoom >=10]{ line-width :2;}
      [zoom >=12]{ line-width :4;}
      [zoom >=14]{ line-width :8;}
      [zoom >=16]{ line-width :13;}     
      
      
 	 }
  
      [tunnel='oui']{    
        line-color:@autoroute_tunnel;       
        [zoom >=10]{ line-width :2;}
        [zoom >=12]{ line-width :4;}
        [zoom >=14]{ line-width :8;}
        [zoom >=16]{ line-width :13;line-dasharray : 8,8 ;}         
   
      }  
    
    [pont='oui']{
     
        line-cap:round; 
    
        [zoom >=10]{
            a/line-width :3;
            a/line-color: @pont;
            b/line-width :2;
            b/line-color:@autoroute;
        }
        
        [zoom >=12]{
            a/line-width :5;
            a/line-color: @pont;
            b/line-width :4;
            b/line-color:@autoroute;
        }
        
        [zoom >=14]{
            a/line-width :10;
            a/line-color: @pont;
            b/line-width :8;
            b/line-color:@autoroute;
        }
        
        [zoom >=16]{
            a/line-width :14;
            a/line-color: @pont;
            b/line-width :12;
            b/line-color:@autoroute;
        }
      
      
           
    }  
    
    
    
}    // fin Autoroute


  
   [route_rouge='oui']{    //====================  Route primaire =====================
   
        line-cap: round;
        line-join: round;
    
    
    [tunnel='non']{    
        
              
      
        [zoom >=11]{
      
            line-width:3;
            line-color: @route_rouge; 
                    
            }
       
        [zoom >=13]{       
            a/line-color: @route_rouge_fond; 
            a/line-width:5;
            b/line-color: @route_rouge;
            b/line-width:4;              
            }
            
        [zoom >=15]{       
            a/line-color: @route_rouge_fond; 
            a/line-width:7;
            b/line-color: @route_rouge;
            b/line-width:6;              
            }
            
        [zoom >=17]{       
            a/line-color: @route_rouge_fond; 
            a/line-width:9;
            b/line-color: @route_rouge;
            b/line-width:8;              
            }     
            
      } 
    
    
    
      
     [tunnel='oui']{
      [zoom >=11]{
        line-color: @route_rouge + 50%;
        line-width: 2;
        line-join: round;
        line-cap:round;
        
       [zoom >=13]{line-width: 4;}
       [zoom >=15]{line-width: 6;}
       [zoom >=17]{line-width: 8;}
        
        } 
      }
    
    
      
      [pont='oui']{ //pont
      
        line-join: round;
        line-cap:round;   
        
        [zoom >=11]{ 
            line-width:3;       
            line-color: @route_rouge; 
        }  
        
        [zoom >=13]{ 
            a/line-width:6;
            a/line-color: @pont;   
            b/line-width:4;     
            b/line-color: @route_rouge; 
        }  
        
        [zoom >=15]{ 
            a/line-width:8;
            a/line-color: @pont;   
            b/line-width:6;     
            b/line-color: @route_rouge; 
        }  
        
        [zoom >=17]{ 
            a/line-width:11;
            a/line-color: @pont;   
            b/line-width:8;    
            b/line-color: @route_rouge; 
        }  
        
              
        } // fin pont 
    
    
   }  // fin route primaire  
  
  
  
  
  
  
  
  
   [route_jaune='oui'] {    //===============  route  Jaune  secondaire  ======
   
        line-cap: round;
        line-join: round;
    
    [tunnel='non']{
    
        line-join: round;
        line-cap:round;              
      
        [zoom >=12]{
            line-color: @route_jaune;             
        } 
               
        [zoom >=13]{             
            a/line-width: 3;
            a/line-color:  @route_jaune_fond;
            b/line-width: 2;
            b/line-color: @route_jaune; 
        }
        
        [zoom >=15]{             
            a/line-width: 6;
            a/line-color:  @route_jaune_fond;
            b/line-width: 5;
            b/line-color: @route_jaune; 
        }
        
        [zoom >=17]{             
            a/line-width: 9;
            a/line-color:  @route_jaune_fond;
            b/line-width: 8;
            b/line-color: @route_jaune; 
        }
        
        [zoom >=15][dsc='oui']{    // ========= avec DSC ==========        
            a/line-width: 6;
            a/line-color:  @route_jaune_fond;
            b/line-width: 5;
            b/line-color: @dsc; 
        }
        
        [zoom >=17][dsc='oui']{             
            a/line-width: 9;
            a/line-color:  @route_jaune_fond;
            b/line-width: 8;
            b/line-color: @dsc; 
        }
        
        
        
      
    }  
    
    
      
     [tunnel='oui']{
       [zoom >=12]{
         line-color: @route_jaune + 50%;
         line-width: 2;
         line-join: round;
         line-cap:round;
        
       [zoom >=13]{line-width: 4;}
       [zoom >=15]{line-width: 6;}
       [zoom >=17]{line-width: 8;}
        
        } 
      }
    
    
      
      [pont='oui']{
      
          line-join: round;
          line-cap:round;  
        
        [zoom >=12]{
          line-color: @route_jaune; 
        }
        
        [zoom >=13]{             
            a/line-width: 4;
            a/line-color:  @pont;
            b/line-width: 2;
            b/line-color: @route_jaune; 
        }
        
        [zoom >=15]{             
            a/line-width: 7;
            a/line-color:  @pont;
            b/line-width: 5;
            b/line-color: @route_jaune; 
        }
        
        [zoom >=17]{             
            a/line-width: 10;
            a/line-color:  @pont;
            b/line-width: 8;
            b/line-color: @route_jaune; 
        }
               
      }
      
   }    // fin route secondaire  
  
  
  
  
   
  
  
  
  
 //===============   route mineure    route blanche     =================
  
    [route_blanche='oui']{ 
    
        line-join : miter;
        line-cap : round;
    
        [tunnel='non']{  
      
            
        
            [zoom >=14]{             
               line-width: 2;
               line-color:  @route_blanche; 
            }             
      
            [zoom >=15]{             
                a/line-width: 4;
                a/line-color:  @route_blanche_fond;
                b/line-width: 3;
                b/line-color: @route_blanche; 
            } 
               
            [zoom >=16]{             
                a/line-width: 5;
                a/line-color:  @route_blanche_fond;
                b/line-width: 4;
                b/line-color: @route_blanche; 
            } 
        
            [zoom >=17]{             
                a/line-width: 5.5;
                a/line-color:  @route_blanche_fond;
                b/line-width: 5;               
                b/line-color: @route_blanche; 
              
            }            
      
            [zoom >=15][dsc='oui']{       // ========= avec DSC ==========            
                a/line-width: 4;
                a/line-color:  @route_blanche_fond;
                b/line-width: 3;
                b/line-color: @dsc; 
            } 
            [zoom >=16][dsc='oui']{             
                a/line-width: 5;
                a/line-color:  @route_blanche_fond;
                b/line-width: 4;
                b/line-color: @dsc; 
            } 
        
            [zoom >=17][dsc='oui']{             
                a/line-width: 5.5;
                a/line-color:  @route_blanche_fond;
                b/line-width: 5;
                b/line-color: @dsc; 
            }            
      
        }  
    
    
      
     [tunnel='oui']{
       [zoom >=14]{
         line-color: @route_blanche + 50%;
         line-width: 2;
         line-join: round;
         line-cap:round;
        
       [zoom >=15]{line-width: 4;}
       [zoom >=16]{line-width: 6;}
       [zoom >=17]{line-width: 8;}
        
        } 
      }
    
    
      
        [pont='oui']{
      
            line-join: round;
            line-cap:round;   
        
        [zoom >=14]{
          line-color: @route_blanche; 
          line-width: 2;          
        }
        
        [zoom >=15]{
            a/line-width:5;
            a/line-color: @route_blanche_fond;
            b/line-width:4;
            b/line-color: @route_blanche;
        }
        
        [zoom >=16]{
            a/line-width:7;
            a/line-color: @route_blanche_fond;
            b/line-width:6;
            b/line-color: @route_blanche;
        }
        
        [zoom >=17]{
            a/line-width:9;
            a/line-color: @route_blanche_fond;
            b/line-width:8;
            b/line-color: @route_blanche;
        }
        
               
        }        
         
    
   
    }  // fin route mineure
   
   
   
   
  
    [highway='pedestrian']{ 
 
        [zoom >=15]{
      
            a/line-width:7;
            a/line-color:@bord_pieton;
            b/line-width:3;
            b/line-color:@fond_pieton;
        }
    }   

  
  
 
  
   [voieverte='oui']{ //================ Voie verte ou piste cyclable  =============
   
        line-join: round; 
         
        [tunnel='non']{
        
            [zoom >=13]{            
            
                line-width:6;
                line-color:@piste;
            }
        }
        
        
        [tunnel='oui']{
        
            [zoom >=13]{
               
               a/line-width:8;
               a/line-dasharray : 3,6; 
               a/line-color:#888888;
               b/line-width:6;
               b/line-color:@piste + 20%;
            }
        }
        
          
        [pont='oui']{
        
            [zoom >=13]{
            
                a/line-width:8;
                a/line-color:@pont; 
                b/line-width:6;
                b/line-color:@piste;
            }
        }
    
     
   }  
   
  
  
  
   
   
    [chemin_simple='oui'][voieverte=null]{  //============   Chemin Simple  =============
    
    
        [pont='non'] { 

            [zoom =14]{
  
                line-width:0.5;
                line-color:@chemin;
                //line-dasharray : 2,2;    
                line-opacity : 0.3 ; 
            }
    
            [zoom =15]{
  
                line-width:1;
                line-color:@chemin;
                line-dasharray : 2,2;    
                line-opacity : 0.5 ; 
            }
    
            [zoom =16]{   
  
                line-width:2;
                line-color:@chemin;
                line-dasharray : 2,2;    
                line-opacity : 0.6 ;     
            }  
    
    
            [zoom =17]{
  
                line-width:2;
                line-color:@chemin;
                line-dasharray : 2,2;    
                line-opacity : 0.7 ; 
            }  
    
        } 
        
        
        
        [pont='oui'] { 

            [zoom =14]{
  
                line-width:0.5;
                line-color:@chemin;
                //line-dasharray : 2,2;    
                line-opacity : 0.3 ; 
            }
    
            [zoom =15]{
  
                line-width:1;
                line-color:@chemin;
                line-dasharray : 2,2;    
                line-opacity : 0.5 ; 
            }
    
            [zoom =16]{   
  
                a/line-width:4;
                a/line-color: @pont;
                b/line-width:3;
                b/line-color: #ffffff;
                c/line-width:2;
                c/line-color:@chemin;
                c/line-dasharray : 2,2;    
                c/line-opacity : 0.6 ;      
            }  
    
    
            [zoom =17]{
            
                a/line-width:6;
                a/line-color: @pont;
                b/line-width:4;
                b/line-color: #ffffff;
                c/line-width:2;
                c/line-color:@chemin;
                c/line-dasharray : 2,2;    
                c/line-opacity : 0.7 ; 
            }  
    
        } 
        
           
  
    } 
  
  
  
  
  
  
  
  
  
  
  
   
  

   [escaliers='oui']{  // ===============  Escaliers ======================

  [zoom =14]{
  
        line-width:0.5;
        line-color:@chemin;
        line-opacity : 0.3 ; 
    }
    
    [zoom =15]{
  
        line-width:1;
        line-color:@chemin;
        line-dasharray : 2,2;    
        line-opacity : 0.5 ; 
    }
    
    [zoom =16]{   
  
        line-width:2;
        line-color:@chemin;
        line-dasharray : 2,2;    
        line-opacity : 0.6 ;     
    
    } 
    
    
    [zoom =17]{          
     
        a/line-width:3;
        a/line-color:@escaliers_fond;
        b/line-width:3;
        b/line-dasharray : 2,1; 
        b/line-color:@escaliers;
       
    
    }
    
     
    
  }       
  
  
  
  
  [bandes='oui']{  //================ Bandes cyclables ==============
     [zoom >=16]{          
       ::gauche{
        line-offset : 5;
        line-color: @piste; 
        line-width:5;line-join: round;
        line-dasharray : 8, 8;  } 
               
       ::droite{
        line-offset : -5;
        line-color: @piste; 
        line-width:5;line-join: round;
        line-dasharray : 8, 8;  }      
      
     }
  
   }
  
  [bande_droite='oui']{  //================ Bande cyclables à droite==============
     [zoom >=16]{          
       ::bande_droite{
        line-offset : 5;
        line-color: @piste; 
        line-width:5;line-join: round;
        line-dasharray : 8, 8;  } 
   }
  }  
  
   [bande_gauche='oui']{  //================ Bande cyclables à gauche==============
     [zoom >=16]{          
       ::bande_droite{
        line-offset : -5;
        line-color: @piste; 
        line-width:5;line-join: round;
        line-dasharray : 8, 8;  } 
   }
  }  
  
  
::bus_droite_direct {  // ====  bus_droite_direct  en 2 ieme passe sur objet route 
[bus_droite_direct='oui']{  
  
  [zoom=16],[zoom=17]{      
    line-pattern-file : url(image/fleche_bleu_droite.png);
    line-pattern-offset : 7;
    }
  
   [zoom=14],[zoom=15]{      
    line-offset : 2;
    line-color: @bus; 
    line-width:3;line-join: round;
    line-dasharray : 5, 5;    
    }
  }
 } 
  
  
::bus_gauche_inverse  {  //   en 2 ieme passe sur objet route 
[bus_gauche_inverse ='oui']{  
  
  [zoom>=16]{      
    line-pattern-file : url(image/fleche_bleu_gauche.png);
    line-pattern-offset : -7
    }
  
   [zoom=14],[zoom=15]{      
    line-offset : 2;
    line-color: @bus; 
    line-width:3;line-join: round;
    line-dasharray : 5, 5;    
    }
  }
 }    
  
  
}//==================  fin #route ========================




.direction::direction {

[su='oui'][tunnel='non'][zoom>=16][pont='non']{  // fleches sens unique
    
    
      
      marker-file : url(svg/fleche_su.svg);
      marker-placement: line;
      marker-fill:#7060b6;     
      marker-spacing: 150;
    
    }
  
  //[dsc='oui'][tunnel='non'][zoom>=16]{ // fleches dsc
         
     // marker-file : url(svg/fleche_dsc.svg);
     // marker-placement: line;
        
    //}
    
    
    
}




