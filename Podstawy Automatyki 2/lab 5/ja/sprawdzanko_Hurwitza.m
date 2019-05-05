function [flag matrix] = sprawdzanko_Hurwitza(Gs, k, Ti, Td, T)

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

badany_obiekt = feedback(Gs, PID);

[lz mz] = cloop(Gs, PID, -1)



if flag == 1
    msgbox('Hurwitz stabilny');
    flag
else
    msgbox('Hurwitz niestabilny');
    flag
end
