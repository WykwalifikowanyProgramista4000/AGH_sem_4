function stability = sprawdz_stabilnosc(k,Ti,Td,T)

lTi = 1;
mTi = [Ti 0];
tTi = tf(lTi,mTi);
lTd = [Td 0];
mTd = [T 1];
tTd = tf(lTd,mTd);
lk = k;
mk = 1;
tk = tf(lk,mk);
t1 = tf(1,1);
tf1 = parallel(tTi,tTd);
tf2 = parallel(tf1,t1);
tfr = series(tk,tf2);

Gs = tf(10,[1 2 2 1]);

final_tf = series(Gs, tfr);
nyquist(final_tf);

stability = isstable(final_tf);

if stability == 1
    msgbox('uk³ad stabilny :)')
else
    msgbox('uk³ad nie jest stabilny :(')
end
