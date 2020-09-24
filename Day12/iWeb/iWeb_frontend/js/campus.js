var map = new BMap.Map("container");      
map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);      
var local = new BMap.LocalSearch(map, {      
    renderOptions:{map: map}      
});      
local.search("天安门");