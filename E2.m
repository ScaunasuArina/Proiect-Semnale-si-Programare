%Semnal triunghiular cu parametrii:
%perioada T = 5s, nivel maxim A+ = 1, nivel minim A- = -2, panta m=1 V/s

%Vom folosi functia SAWTOOTH.
%Functia sawtooth(t,width)- genereaza un semnal triunghilar modificat, unde parametrul width 
%determina unde intre 0 si 2 are loc maximul. 
%Functia creste de la -1 la 1 pe un interval [0, 2*pi × width], apoi cade linear de la 1 la -1 
%pe intervalul [2*pi × width, 2*pi]. Astfel, width=0.5 genereaza un semnal triunghiular simetric.



%Pentru t = 2ms rezolutia temporala
t=0:0.002:20; %0.002 = 2ms = rezolutia temporala
%Argumentul 2*pi*t al functiei este inmultit cu 1/6 pentru a “lati” semnalul astfel incat
%panta sa sa devina + 1 V/s.
%A+ =  1 => sawtooth(t*2*1/6*pi,width) = 1;
%A- = -2 => sawtooth(t*2*1/6*pi,width) = -1
%  1 = a*1 - b
% -2 = a*(-1) - b
%Din cele 2 ecuatii rezulta a = 1.5, b = -0.5
s=1.5*sawtooth(t*2*1/6*pi, 0.5) - 0.5;
hold on
subplot(3,1,1)
plot(t,s,'r*'),title('Semnal Triunghiular'),xlabel('Timp [s]'),ylabel('A [V]')
%La plot(t,s,'r*') am ales 'r*' pentru a evidentia punctele si pt a se
%evidentia diferenta intre t= 20ms si t=200ms


%Pentru t = 20ms rezolutia temporala

t=0:0.02:2; %0.02 = 20ms = rezolutia temporala
s=1.5*sawtooth(t*2*1/6*pi, 0.5) - 0.5;
hold on
subplot(3,1,2)
plot(t,s,'r*'),title('Semnal Triunghiular'),xlabel('Timp [s]'),ylabel('A [V]')


%Pentru t = 200ms rezolutia temporala

t=0:0.2:2;%t=0:0.2:2; %0.2 = 200ms = rezolutia temporala
s=1.5*sawtooth(t*2*1/6*pi, 0.5) - 0.5;
hold on
subplot(3,1,3)
plot(t,s,'r*'),title('Semnal Triunghiular'),xlabel('Timp [s]'),ylabel('A [V]')