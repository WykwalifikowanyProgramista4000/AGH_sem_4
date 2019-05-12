%% Zadanie 1

A=[5, 6, 7, 8, 9]; 
B=[10, 8, 6, 8, 10]; 
C=[5, 6, 5, 6, 5]; 

lpc_A1 = lpc(A,1)
lpc_B1 = lpc(B,1)
lpc_C1 = lpc(C,1)

lpc_A2 = lpc(A,2)
lpc_B2 = lpc(B,2)
lpc_C2 = lpc(C,2)

lpc_A3 = lpc(A,3)
lpc_B3 = lpc(B,3)
lpc_C3 = lpc(C,3)

%% Zadanie 2

F=[20, 30, 25, 15]; 
G=[1, 1, 1, 2, 2]; 

lpc_F1 = lpc(F,1)
lpc_G1 = lpc(G,1)

lpc_F2 = lpc(F,2)
lpc_G2 = lpc(G,2)

lpc_F3 = lpc(F,3)
lpc_G3 = lpc(G,3)

%% Zadanie 3

lpc1_wiatrak_20 = lpc(w20data, 1)
lpc1_przekladnia_20 = lpc(p20data, 1)

lpc2_wiatrak_20 = lpc(w20data, 2)
lpc2_przekladnia_20 = lpc(p20data, 2)

lpc10_wiatrak_20 = lpc(w20data, 10)
lpc10_przekladnia_20 = lpc(p20data, 10)

%% Zadanie 4

samochod1=[1, 50, 1, 50, 1, 50, 1];
samochod2=[2, 49, 2, 49, 2, 49, 2]; 
samochod3=[1, 48, 2, 49, 3, 50, 4]; 

ciezarowka1=[10, 20, 10, 20, 10, 20]; 
ciezarowka2=[11, 21, 11, 21, 11, 21]; 
ciezarowka3=[12, 22, 12, 22, 12, 22]; 

lpc_samochod_1 = lpc(samochod1, 2)
lpc_samochod_2 = lpc(samochod2, 2)
lpc_samochod_3 = lpc(samochod3, 2)

lpc_ciezarowka1 = lpc(ciezarowka1, 2)
lpc_ciezarowka2 = lpc(ciezarowka2, 2)
lpc_ciezarowka3 = lpc(ciezarowka3, 2)

%% Zadanie 5

Ds1 = sum(abs(lpc_samochod_3 - lpc_samochod_1))
Ds2 = sum(abs(lpc_samochod_3 - lpc_samochod_2))

Dc1 = sum(abs(lpc_ciezarowka3 - lpc_ciezarowka1))
Dc2 = sum(abs(lpc_ciezarowka3 - lpc_ciezarowka2))

%% Zadanie 6

w0 = abs(lpc(w20data, 10));
w1 = abs(lpc(w21data, 10));
w3 = abs(lpc(w23data, 10));
w4 = abs(lpc(w24data, 10));

p0 = abs(lpc(p20data, 10));
p1 = abs(lpc(p21data, 10));
p3 = abs(lpc(p23data, 10));
p4 = abs(lpc(p24data, 10));

D_w0_w1 = sum(abs(w0 - w1))
D_w0_w3 = sum(abs(w0 - w3))
D_w0_w4 = sum(abs(w0 - w4))
D_w1_w3 = sum(abs(w1 - w3))
D_w1_w4 = sum(abs(w1 - w4))
D_w3_w4 = sum(abs(w3 - w4))


D_p0_p1 = sum(abs(p0 - p1))
D_p0_p3 = sum(abs(p0 - p3))
D_p0_p4 = sum(abs(p0 - p4))
D_p1_p3 = sum(abs(p1 - p3))
D_p1_p4 = sum(abs(p1 - p4))
D_p3_p4 = sum(abs(p3 - p4))

%% Zadanie 7

samochod1=[1, 50, 1, 50, 1, 50, 1];
samochod2=[2, 49, 2, 49, 2, 49, 2]; 
samochod3=[1, 48, 2, 49, 3, 50, 4]; 

ciezarowka1=[10, 20, 10, 20, 10, 20]; 
ciezarowka2=[11, 21, 11, 21, 11, 21]; 
ciezarowka3=[12, 22, 12, 22, 12, 22]; 

poly2lsf_samochod_1 = poly2lsf(lpc(samochod1, 2))
poly2lsf_samochod_2 = poly2lsf(lpc(samochod2, 2))
poly2lsf_samochod_3 = poly2lsf(lpc(samochod3, 2))

poly2lsf_ciezarowka1 = poly2lsf(lpc(ciezarowka1, 2))
poly2lsf_ciezarowka2 = poly2lsf(lpc(ciezarowka2, 2))
poly2lsf_ciezarowka3 = poly2lsf(lpc(ciezarowka3, 2))

%% Zadanie 8

D_s3_s1 = sum(abs(poly2lsf_samochod_3 - poly2lsf_samochod_1))
D_s3_s2 = sum(abs(poly2lsf_samochod_3 - poly2lsf_samochod_2))

D_c3_c1 = sum(abs(poly2lsf_ciezarowka3 - poly2lsf_ciezarowka1))
D_c3_c2 = sum(abs(poly2lsf_ciezarowka3 - poly2lsf_ciezarowka2))