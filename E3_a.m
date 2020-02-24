%Semnal dreptunghiular multinivel aleator
%Durata fiecarui nivel:0,25s


%) Nivelurile {-1;1}
%Pentru t = 2ms rezolutia temporala

t=0:0.002:15; %0.002 = 2ms = rezolutia temporala
niv = [ -1 1 ]
figure(1);
hold on
title('Semnal dreptunghiular multinivel aleator'),xlabel('Timp [s]'),ylabel('A [V]')
for n=0:0.25:25 %n=initial:pas:final
y = datasample(niv, 1);
%Functia datasample(data,k) returneaza k observatii extrase aleator din matricea/vectorul data.
plot(t, y*rectpuls(t-n, 0.25))
%Functia rectpuls(t,w)genereaza un impuls unitate (A=1) dreptunghiular de durata w centrat in t.
end


%Pentru t = 20ms rezolutia temporala

t=0:0.02:2; %0.02 = 20ms = rezolutia temporala
niv = [ -1 1 ]
figure(2);
hold on
title('Semnal dreptunghiular multinivel aleator'),xlabel('Timp [s]'),ylabel('A [V]')
for n=0:0.25:25 %n=initial:pas:final
y = datasample(niv, 1);
%y = datasample(data,k) returneaza k observatii extrase aleator din matricea/vectorul data.
plot(t, y*rectpuls(t-n, 0.25))
%y = rectpuls(t,w)genereaza un impuls unitate (A=1) dreptunghiular de durata w centrat in t.
end



%Pentru t = 200ms rezolutia temporala

t=0:0.02:2; %0.2 = 200ms = rezolutia temporala
niv = [ -1 1 ]
figure(3);
hold on
title('Semnal dreptunghiular multinivel aleator'),xlabel('Timp [s]'),ylabel('A [V]')
for n=0:0.25:25 %n=initial:pas:final
y = datasample(niv, 1);
%y = datasample(data,k) returneaza k observatii extrase aleator din matricea/vectorul data.
plot(t, y*rectpuls(t-n, 0.25))
%y = rectpuls(t,w)genereaza un impuls unitate (A=1) dreptunghiular de durata w centrat in t.
end