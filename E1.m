%Semnal dreptunghiular cu parametrii:
% factorul de umplere n=25%, perioada T=2s, nivel maxim A+=0.5, nivel minim A-=-1

%Vom folosi functia SQUARE.
%Functia square(t,duty)-genereaza un semnal dreptunghiular cu factorul de
%umplere (duty) specificat.
%Functia se comporta similar cu sin(t), in sensul ca unda are perioada
%2*pi, square(t,duty)= +1 pentru sin(t)>0 si square(t,duty)= -1 pentru sin(t)<0.


%Pentru t = 2ms rezolutia temporala

t=0:0.002:2; %0.002 = 2ms = rezolutia temporala
%A+=0.5 >0 => square(t*2*pi,25)=1; A-=-1 <0 => square(t*2*pi,25)= -1
%0.5 = a*1 - b
%-1 = a*(-1) - b
%Din cele 2 ecuatii rezulta a = 0.75, b = -0.25
s=0.75*square(t*2*pi, 25) - 0.25; 
hold on
subplot(3,1,1)
plot(t,s),title('Semnal Dreptunghiular'),xlabel('Timp [s]'),ylabel('A [V]')


%Pentru t = 20ms rezolutia temporala

t=0:0.02:2; %0.02 = 20ms = rezolutia temporala
s=0.75*square(t*2*pi, 25) - 0.25;
hold on
subplot(3,1,2)
plot(t,s),title('Semnal Dreptunghiular'),xlabel('Timp [s]'),ylabel('A [V]')



%Pentru t = 200ms rezolutia temporala

t=0:0.2:2;%t=0:0.2:2; %0.2 = 200ms = rezolutia temporala
s=0.75*square(t*2*pi, 25) - 0.25;
hold on
subplot(3,1,3)
plot(t,s),title('Semnal Dreptunghiular'),xlabel('Timp [s]'),ylabel('A [V]')
