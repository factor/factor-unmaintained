
USING: kernel namespaces arrays sequences threads math math.vectors
       ui random springies springies.ui ;

IN: springies.models.nifty

: model ( -- )

{ } clone >nodes
{ } clone >springs
0.007 >time-slice
gravity off

1 148.581450999999987 350.573888000000011 0 -7.75 1 0.1 mass
2 168.564277000000004 351.402524000000028 0 -7.75 1 0.1 mass
3 188.54710399999999 352.231158999999991 0 -7.75 1 0.1 mass
4 208.529931000000005 353.059794000000011 0 -7.75 1 0.1 mass
5 228.512757999999991 353.888428999999974 0 -7.75 1 0.1 mass
6 248.495584000000008 354.717063999999993 0 -7.75 1 0.1 mass
7 149.410086000000007 330.591061000000025 0 -7.75 1 0.1 mass
8 150.238720999999998 310.608234999999979 0 -7.75 1 0.1 mass
9 151.06735599999999 290.625407999999993 0 -7.75 1 0.1 mass
10 151.895991000000009 270.642581000000007 0 -7.75 1 0.1 mass
11 152.724626000000001 250.65975499999999 0 -7.75 1 0.1 mass
12 172.707452999999987 251.48839000000001 0 -7.749999 1 0.1 mass
13 192.690280000000001 252.317025000000001 0 -7.75 1 0.1 mass
14 212.67310599999999 253.145659999999992 0 -7.75 1 0.1 mass
15 232.655933000000005 253.974295000000012 0 -7.75 1 0.1 mass
16 252.638759999999991 254.802930000000003 0 -7.75 1 0.1 mass
17 251.810124999999999 274.78575699999999 0 -7.75 1 0.1 mass
18 250.98148900000001 294.768583999999976 0 -7.75 1 0.1 mass
19 249.324218999999999 334.734237000000007 0 -7.75 1 0.1 mass
20 250.152853999999991 314.751410000000021 0 -7.75 1 0.1 mass
1 1 2 200 1.5 20 spng
2 2 3 200 1.5 20 spng
3 3 4 200 1.5 20 spng
4 4 5 200 1.5 20 spng
5 5 6 200 1.5 20 spng
6 6 19 200 1.5 20 spng
7 19 20 200 1.5 20 spng
8 20 18 200 1.5 20 spng
9 18 17 200 1.5 20 spng
10 17 16 200 1.5 20 spng
11 16 15 200 1.5 20 spng
12 15 14 200 1.5 20 spng
13 14 13 200 1.5 20 spng
14 13 12 200 1.5 20 spng
15 12 11 200 1.5 20 spng
16 11 10 200 1.5 20 spng
17 10 9 200 1.5 20 spng
18 9 8 200 1.5 20 spng
19 8 7 200 1.5 20 spng
20 7 1 200 1.5 20 spng
21 1 19 200 1.5 101.98039 spng
22 19 14 200 1.5 89.4427189999999968 spng
23 14 8 200 1.5 84.8528139999999951 spng
24 8 5 200 1.5 89.4427189999999968 spng
25 5 16 200 1.5 101.98039 spng
26 16 10 200 1.5 101.98039 spng
27 10 3 200 1.5 89.4427189999999968 spng
28 3 18 200 1.5 84.8528139999999951 spng
29 18 12 200 1.5 89.4427189999999968 spng
30 12 1 200 1.5 101.98039 spng
31 2 20 200 1.5 89.4427189999999968 spng
32 20 13 200 1.5 84.8528139999999951 spng
33 13 7 200 1.5 89.4427189999999968 spng
34 7 6 200 1.5 101.98039 spng
35 6 15 200 1.5 101.98039 spng
36 15 9 200 1.5 89.4427189999999968 spng
37 9 4 200 1.5 84.8528139999999951 spng
38 4 17 200 1.5 89.4427189999999968 spng
39 17 11 200 1.5 101.98039 spng
40 11 2 200 1.5 101.98039 spng

nodes> 200 random -100 + 200 random -100 + 2array [ swap set-node-vel ] curry
each ;

: go ( -- ) [ model ] go* ;

MAIN: go
