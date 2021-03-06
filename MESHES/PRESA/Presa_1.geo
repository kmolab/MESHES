// Gmsh project created on Sun Jun 11 13:46:33 2017
SetFactory("OpenCASCADE");
//+
Point(1) = {-5, 50, 0, 1.0};
//+
Point(2) = {5, 50, 0, 1.0};
//+
Point(3) = {5, 40, 0, 1.0};
//+
Point(4) = {-5, 40, 0, 1.0};

Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line Loop(1) = {1, 2, 3, 4};
Plane Surface(1) = {1};

Point(5) = {-25, 0, 0, 1.0};
//+
Point(6) = {25, 0, 0, 1.0};
//+
Line(5) = {4, 5};
//+
Line(6) = {5, 6};
//+
Line(7) = {6, 3};
//+
Line Loop(2) = {5, 6, 7, 3};
//+
Plane Surface(2) = {2};

Transfinite Line{1,2,3,4} = 4 ;
Transfinite Line{5,7} = 16 ;
Transfinite Line{6} = 20 ;

Transfinite Surface{1}
Transfinite Surface{2}

