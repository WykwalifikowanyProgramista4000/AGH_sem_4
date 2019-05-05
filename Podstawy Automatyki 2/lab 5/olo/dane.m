l0 = 10;
m0 = [1 2 2 1];
k = 2;
Ti = 1;
Td = 0.5;
T = 0.01;
lTi = 1;
mTi = [Ti 0];
tTi = tf(lTi,mTi)
lTd = [Td 0];
mTd = [T 1];
tTd = tf(lTd,mTd)
lk = k;
mk = 1;
tk = tf(lk,mk)
t1 = tf(1,1)
tf1 = parallel(tTi,tTd)
tf2 = parallel(tf1,t1)
tfr = series(tk,tf1)

Gs = tf(l0, m0)

G_fin = series(tfr,Gs)
nyquist(G_fin)
isstable(G_fin)