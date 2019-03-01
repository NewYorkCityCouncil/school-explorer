# Change size of popups
sed -i "s/maxWidth: '300'/maxWidth: '400', maxHeight: '500', minWidth: '400'/g" ed_map.html

# Get rid of legend
sed -i 's/\.attr("width", 450)/\.attr("width", 0)/g' ed_map.html
sed -i 's/\.attr("height", 40)/\.attr("height", 0)/g' ed_map.html

# Use different basemap
#sed -i 's/https:\/\/cartodb-basemaps-{s}\.global\.ssl\.fastly\.net\/light_all\/{z}\/{x}\/{y}\.png/https:\/\/cartodb-basemaps-{s}\.global\.ssl\.fastly\.net\/light_nolabels\/{z}\/{x}\/{y}\.png/g' ed_map.html

# Change color of tile highlight when hovering
sed -i 's/"fillColor": "#8c96c6"/"fillColor": "#82C91E"/g' ed_map.html

# Disable markercluster borders.
sed -i 's/L\.markerClusterGroup({});/L\.markerClusterGroup({showCoverageOnHover: false});/g' ed_map.html

#Add awesomefont and html portion for the geocoder (search function

sed -i 's/<link rel="stylesheet" href="https:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/leaflet\.fullscreen\/1\.4\.2\/Control\.FullScreen\.min\.css"\/>/<link rel="stylesheet" href="https:\/\/cdnjs\.cloudflare\.com\/ajax\/libs\/leaflet\.fullscreen\/1\.4\.2\/Control\.FullScreen\.min\.css"\/> \n <link rel="stylesheet" href="https:\/\/use\.fontawesome\.com\/releases\/v5\.6\.3\/css\/all\.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s\/" crossorigin="anonymous"> \n <link rel="stylesheet" href="https:\/\/unpkg\.com\/leaflet-control-geocoder\/dist\/Control\.Geocoder\.css" \/> \n <script src="https:\/\/unpkg\.com\/leaflet-control-geocoder\/dist\/Control\.Geocoder\.js"><\/script>/g' ed_map.html

# Add geocoder code

