% Gówno obsrane
% Badany obiekt

licznik_G = [10];
mianownik_G = [1 2 2 1];

Gs = tf(licznik_G, mianownik_G);

k = 0.1;
Ti = 1;
Td = 0.5;
T =0.01;

licznik_jeden = [1];
mianownik_jeden = [1];

licznik_I = [1];
mianownik_I = [Ti 0];

licznik_D = [Td 0];
mianownik_D = [T 1];

licznik_k = [k];
mianownik_k = [1];

tf_jeden = tf(licznik_jeden);
tf_I = tf(licznik_I, mianownik_I);
tf_D = tf(licznik_D, mianownik_D);
tf_k = tf(licznik_k, mianownik_k);

jeden_I = parallel(tf_jeden, tf_I);
jeden_I_D = parallel(jeden_I, tf_D);
PID = series(tf_k, jeden_I_D);

badany_obiekt = feedback(Gs, PID,-1);


nyquist(badany_obiekt)

step(badany_obiekt)