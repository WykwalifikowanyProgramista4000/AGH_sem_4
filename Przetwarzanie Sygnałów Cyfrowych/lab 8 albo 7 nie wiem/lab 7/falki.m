%% zad1

[c,l] = wavedec(wiatrak_20, 5, 'db2');
[d5] = detcoef(c,l,[5]);
fid = fopen('wiatrak_20_d5.txt','w+t','n');
fprintf(fid,'%f\n',abs(d5));
fclose(fid);
plot(d5);

%% zad2

[c,l] = wavedec(wiatrak_20, 4, 'coif2');
a4 = appcoef(c,l,'coif2');
fid = fopen('wiatrak_20_a4.txt','w+t','n');
fprintf(fid,'%f\n',abs(a4));
fclose(fid);
plot(a4);

%% zad3

[c,l] = wavedec(wiatrak_20, 8, 'coif2');
a8 = appcoef(c,l,'coif2');
fid = fopen('wiatrak_20_a8.txt','w+t','n');
fprintf(fid,'%f\n',abs(a8));
fclose(fid);
plot(a8);

%% zad4

[c,l] = wavedec(wiatrak_20, 10, 'haar');
[d10_haar] = detcoef(c,l,[10]);
fid = fopen('wiatrak_20_d5.txt','w+t','n');
fprintf(fid,'%f\n',abs(d10_haar));
fclose(fid);
plot(d10_haar);

%% zad5

[c,l] = wavedec(wiatrak_20, 10, 'dmey');
[d10_dmey] = detcoef(c,l,[10]);
fid = fopen('wiatrak_20_d5.txt','w+t','n');
fprintf(fid,'%f\n',abs(d10_dmey));
fclose(fid);
plot(d10_dmey);

%% zad6

[c,l] = wavedec(wiatrak_20, 8, 'bior3.5');
a8_bior = appcoef(c,l,'bior3.5');
fid = fopen('wiatrak_20_a8.txt','w+t','n');
fprintf(fid,'%f\n',abs(a8_bior));
fclose(fid);
plot(a8_bior);

%% zad7

figure
subplot(2,1,1)
plot(wiatrak_20);
legend('Sygna³ przed dekompozycj¹')
[c,l] = wavedec(wiatrak_20,12, 'coif2');
Rec = waverec(c,l,'coif2');
subplot(2,1,2)
plot(Rec);
legend('Sygna³ po rekonstrukcji')

figure
plot(wiatrak_20);
hold on
plot(Rec);
legend('Sygna³ przed dekompozycj¹','Sygna³ po rekonstrukcji')

%% zad8

figure
subplot(2,1,1)
plot(wiatrak_20);
legend('Sygna³ przed dekompozycj¹')
[c,l] = wavedec(wiatrak_20,12, 'coif2');
Rec = waverec(c,l,'haar');
subplot(2,1,2)
plot(Rec);
legend('Sygna³ po rekonstrukcji')

figure
plot(wiatrak_20);
[c,l] = wavedec(wiatrak_20,12, 'coif2');
Rec = waverec(c,l,'haar');
hold on
plot(Rec);
legend('Sygna³ przed dekompozycj¹','Sygna³ po rekonstrukcji')
