# kosmtik-style-lvv

Style de rendu kosmtik pour la carte de la ville a velo

![alt tag](https://github.com/rya6453/lvv-style/blob/master/lvv.png)


## Import des données osm

- Téléchargement de zones prédécoupées au format pbf (http://www.geofabrik.de/data/download.html , https://mapzen.com/data/metro-extracts/)
- Découper encore si la zone  téléchargée est trop grande avec [osmosis](https://wiki.openstreetmap.org/wiki/FR:Osmosis)
- Import dans la base postgis avec l'outil [osm2pgsl](https://wiki.openstreetmap.org/wiki/Osm2pgsql) avec le style : osm2pgsql_lvv.style
