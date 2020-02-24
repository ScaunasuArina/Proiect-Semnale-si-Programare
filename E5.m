%Semnal sinusoidal redresat dubla alternanta cu parametrii:
%perioada T=4s, amplitudinea A=1.5

%Pentru t = 2ms rezolutia temporala
t = 0:0.002:8; %0.002 = 2ms 
%Intrucat sin(t) are implicit perioada T=1 si A=1, argumentul trebuie inmultit cu 1/4 pentru a
%corespunde T=4s, iar functia insasi cu 1.5 pentru a satisface A=1.5.
s=1.5*abs( sin(2*pi*t*1/4) ); %folosim functia abs(t) pentru a produce redresarea dublu alternanta
hold on
subplot(3,1,1)
plot(t, s, 'r*'),title('Sinus redresat dubla-alternanta'),xlabel('Timp [s]'),ylabel('A [V]')
%La plot(t,s,'r*') am ales 'r*' pentru a evidentia punctele si pt a se
%evidentia diferenta intre t= 20ms si t=200ms


%Pentru t = 20ms rezolutia temporala

t=0:0.02:2; %0.02 = 20ms
s=1.5*abs( sin(2*pi*t*1/4) );
hold on
subplot(3,1,2)
plot(t, s, 'r*'),title('Sinus redresat dubla-alternanta'),xlabel('Timp [s]'),ylabel('A [V]')



%Pentru t = 200ms rezolutia temporala

t=0:0.2:2;%t=0:0.2:2; %0.2 = 200ms 
s=1.5*abs( sin(2*pi*t*1/4) );
hold on 
subplot(3,1,3)
plot(t, s, 'r*'),title('Sinus redresat dubla-alternanta'),xlabel('Timp [s]'),ylabel('A [V]')

