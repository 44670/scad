
include <common.scad>
include <threads.scad>


difference() {
    translate([-BORDER, -BORDER, -BORDER])
        cube([IN_X + BORDER*2, IN_Y + BORDER*2, IN_Z + BORDER]);
    cube([IN_X, IN_Y, 50]);
    //debug
    translate([IN_X-0.1, 10, 0]) cube([10, 12, 10]);
    //usb
    translate([10,-BORDER-0.1,0]) cube([11,10,10]);
    translate([40, IN_Y-0.1, 0]) btnhole();
    translate([50, IN_Y-0.1, 0]) btnhole();
    translate([60, IN_Y-0.1, 0]) btnhole();
    translate([10, IN_Y-33,0]) battery_case();
    
}






translate([2,2,0]) m2hole(1.5);
translate([IN_X-2,IN_Y-2,0]) m2hole(1.5);
translate([2,IN_Y-2,0]) m2hole(1.5);
translate([IN_X-2,2,0]) m2hole(1.5);
