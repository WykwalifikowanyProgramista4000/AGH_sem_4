%1) 

% 2) rodzaj falki, poziom dekompozycji, defilment, w amtlabie można
%   zmodyfikować falki w ustawieniach matlaba

%3) częstotliwościami, 
%   a1 - 0 : 11025
%   d1 - 11025 : 22050
%   a2 - 0 : 5512,5
%   d2 - 5512,5 - 11025
%   d3 - and so on
%   d4
%   d5

% 4) W falce nie tracimy dane które oddzielamy. Możemy zawsze
% zrekonstruować badany wcześniej sygnał. W filtrach tracimy odfiltrowywane
% informacje. 
%% Przykład 2
[c,l] = wavedec(w20data,7, 'sym2'); 
[d7] = detcoef(c,l,[7]); 
fid = fopen('wiatrak_20_d7.txt','w+t','n'); 
fprintf(fid,'%f\n',abs(d7)); 
fclose(fid) 
plot(d7);

%% Przykład 3
[c,l] = wavedec(w20data,7, 'sym2'); 
a7 = appcoef(c,l,'sym2'); 
fid = fopen('wiatrak_20_a7.txt','w+t','n'); 
fprintf(fid,'%f\n',abs(a7)); 
fclose(fid) 
plot(a7); 

%% Przykład 4
subplot(2,1,1);
plot(w20data); 
[c,l] = wavedec(w20data,6, 'coif2'); 
Rec = waverec(c,l,'coif2'); 
subplot(2,1,2);
plot(Rec);

%% Zadanie 1
[c,l] = wavedec(w20data,5, 'sym2'); 
[d5] = detcoef(c,l,[5]); 
fid = fopen('wiatrak_20_d7.txt','w+t','n'); 
fprintf(fid,'%f\n',abs(d5)); 
fclose(fid) 
plot(d5);