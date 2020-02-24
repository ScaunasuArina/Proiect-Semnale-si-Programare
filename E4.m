%Semnal sinusoidal redresat mono alternanta cu parametrii:
%perioada T=3s, amplitudine A=0.8


%Pentru t = 2ms rezolutia temporala
t = 0:0.002:4; %0.002 = 2ms = rezolutia temporala
%Intrucat sin(t) are implicit perioada T=1 si amplitudinea A=1, argumentul trebuie inmultit cu 1/3 
%pentru acorespunde T=3s, iar functia insasi cu 0.8 pentru a satisface A=0.8.
s=0.8*sin(2*pi*t*1/3);
s (s<0) = 0 %Conditie impusa pentru monoredresare
hold on
subplot(3,1,1)
plot(t, s),title('Semnsal Sinusoidal Redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')



%Pentru t = 20ms rezolutia temporala

t=0:0.02:2; %0.02 = 20ms = rezolutia temporala
s=0.8*sin(2*pi*t*1/3);
s(s<0) = 0
hold on
subplot(3,1,2)
plot(t, s),title('Semnsal Sinusoidal Redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')



%Pentru t = 200ms rezolutia temporala

t=0:0.2:2;%t=0:0.2:2; %0.2 = 200ms = rezolutia temporala
s=0.8*sin(2*pi*t*1/3);
s(s<0) = 0
hold on
subplot(3,1,3)
plot(t, s),title('Semnsal Sinusoidal Redresat mono alternanta'),xlabel('Timp [s]'),ylabel('A [V]')


