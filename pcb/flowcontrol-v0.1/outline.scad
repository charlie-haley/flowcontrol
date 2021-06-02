difference(){  
    minkowski()
    {
        square([85, 55], center = true);
        circle(r=2, $fn=30);
    }
    translate([41.5,26.5]) circle(d=3.01, $fn=30);
    translate([-41.5,26.5]) circle(d=3.01, $fn=30);
    translate([41.5,-26.5]) circle(d=3.01, $fn=30);
    translate([-41.5,-26.5]) circle(d=3.01, $fn=30);
}