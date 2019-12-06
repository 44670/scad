BORDER = 1.6;
IN_X = 98;
IN_Y = 78;
IN_Z = 7;

module battery_case() {
    difference() {  
        translate([0,0,-BORDER])
            cube([18, 33+BORDER, 5+BORDER]);
        cube([18,33, 5]);
        translate([0, 0, -BORDER])
            cube([2, 25, BORDER/2]);
        translate([18-2, 0, -BORDER])
            cube([2, 25, BORDER/2]);
    }
}


module btnhole() {
    cube([5,10,10]);
}

module m2hole(h) {
    difference() {
        cylinder(h, 2, 2, $fn=10);
        metric_thread (diameter=2, pitch=0.4, length=h+0.1);
    }
    
}