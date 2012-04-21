//pcb-bottom=5mm
module shit()
{
length=85-2;

difference()
{
union()
{
translate([-3,0,0])cube([length+3+3,25,3]);
translate([-4,0,4])rotate([-90,0,0])cylinder(r=4,h=25);
translate([length+4,0,4])rotate([-90,0,0])cylinder(r=4,h=25);
//translate([-1,2,2])cube([87,3,2]);
//translate([-1,2+3*1.6,2])cube([87,3,2]);
}
translate([-4,15,4])rotate([-90,0,0])cylinder(r=1.8,h=40,center=true);
translate([length+4,15,4])rotate([-90,0,0])cylinder(r=1.8,h=40,center=true);

translate([-10,12.5-20,-1])cube([10,20,10]);
translate([length,12.5,-1])cube([10,20,10]);
translate([0,5,-1])cube([length,1.6,2])

translate([64.6,(5+7.7+0.3),-10])cylinder(r=3.7,h=20);
//translate([64.6,5+7.7,3])cylinder(r=9,h=20);
translate([45.6,5+9.25,-10])cylinder(r=9.5/2,h=20);

}
}

boardlength = 85;
height=25;
thickness=3;
groovedepth=1;
groovewidth=1.6;
basetobottom=5;
dcylinder=8;
dbore=3.6;
boardwidth=56;

module sides()
{

difference()
{

	union()
	{
		translate([-thickness,0,0])cube([boardlength+2*thickness,height,thickness]);
		translate([-dcylinder/2,0,dcylinder/2])rotate([-90,0,0])cylinder(r=dcylinder/2,h=25);
		translate([83+dcylinder/2,0,dcylinder/2])rotate([-90,0,0])cylinder(r=4,h=25);


	}

	translate([0,basetobottom,-1])cube([boardlength,groovewidth,groovedepth+1]);
	translate([-10,-1,0]) cube([10,13.5,10]);
	translate([83,13.5-1,0]) cube([10,13.5,10]);


	translate([-4,15,4])rotate([-90,0,0])cylinder(r=1.8,h=40,center=true);
	translate([83+4,15,4])rotate([-90,0,0])cylinder(r=1.8,h=40,center=true);


//translate([85-64.6-1,(5+7.7+0.3),-10])cylinder(r=3.7,h=20);
//translate([85-64.6-1,5+7.7,-18.5])cylinder(r=9,h=20);
//translate([85-45.6-1,5+9.25,-10])cylinder(r=9.5/2,h=20);


//HDMI: translate([36.7+7.5-10-1,5-0.75+1.6,-1])cube([20,9,20]);
//cable thing next to HDMI: translate([58,5+8.5,-8.5])cylinder(r=3.5,h=10);
}



}

module sides()
{
difference()
{

	union()
	{
		translate([-thickness,0,0])cube([boardwidth+2*thickness,height,thickness]);
		translate([-dcylinder/2,0,dcylinder/2])rotate([-90,0,0])cylinder(r=dcylinder/2,h=25);
		translate([boardwidth-2+dcylinder/2,0,dcylinder/2])rotate([-90,0,0])cylinder(r=4,h=25);


	}

	translate([0,basetobottom,-1])cube([boardwidth,groovewidth,groovedepth+1]);
	translate([-10,-1,0]) cube([10,13.5,10]);
	translate([boardwidth-2,13.5-1,0]) cube([10,13.5,10]);


	translate([-4,15,4])rotate([-90,0,0])cylinder(r=1.8,h=40,center=true);
	translate([boardwidth-2+4,15,4])rotate([-90,0,0])cylinder(r=1.8,h=40,center=true);


//sd and power side :)
//	translate([25.75-13-1,5-3.95,-5])cube([26,4.5,10]);
//	translate([48.35-6.5-1,5+1.95-4.5,-5])cube([13,9,10]);

	translate([10.22-8.5-1,7.98+5-7,0])cube([17,14,20]);
	translate([23.85+7.15-8,5+7.7+2.04-8,0])cube([15,16,20]);


}

}

module base()
{
	difference()
	{
		union()
		{
			cube([91+4,61+4,3]);
			translate([1,1,0])cylinder(r=4,h=3);
			translate([1,60+4-1,0])cylinder(r=4,h=3);
			translate([90+4-1,1,0])cylinder(r=4,h=3);
			translate([90+4-1,60+4-1,0])cylinder(r=4,h=3);
		}
		translate([2,2,1.5])cube([91,61,1.5+1]);

		translate([(91+4-75)/2,(61+4-45)/2,-2])cube([75,45,10]);

			translate([1,1,-1])cylinder(r=1.8,h=10);
			translate([1,60+4-1,-1])cylinder(r=1.8,h=10);
			translate([90+4-1,1,-1])cylinder(r=1.8,h=10);
			translate([90+4-1,60+4-1,-1])cylinder(r=1.8,h=10);


			translate([1,1,1.5])cylinder(r=4.5,h=3);
			translate([1,60+4-1,1.5])cylinder(r=4.5,h=3);
			translate([90+4-1,1,1.5])cylinder(r=4.5,h=3);
			translate([90+4-1,60+4-1,1.5])cylinder(r=4.5,h=3);



	}
}

base();