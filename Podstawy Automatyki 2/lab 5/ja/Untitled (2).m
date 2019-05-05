% Badany obiekt

licznik_G = [10];
mianownik_G = [1 2 2 1];

Gs = tf(licznik_G, mianownik_G);

k = 2
Ti = 1
Td = 0.5
T =0.01

sprawdzanko_nyquista(Gs, k, Ti, Td, T)