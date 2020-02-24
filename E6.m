%Semnal triunghiular cu perioada T=40, durata semnalului D=18

D=18;
N=50; %Numarul de coeficinti ales N=50
T = 40;
f=1/T; %Frecventa semnalului
w=2*pi*f; %Pulsatia semnalului

C = zeros(1,2*N+1); %Am initializat vectorul de coeficienti cu valori nule

%Rezolutia temorala t=100ms
t = -2*T:0.1:2*T; %0.1 = 100ms 

%Contruire semnal initial:
x=abs(sawtooth(w*t,0.45));

%Deoarece, pentru D=T/2=20, avem xmax=0.5, atunci pentru D=18, avem
%xmax=0.45


%Calculul coeficientilor folosind formula:
for k = -N:N

C(k+N+1) = integral(@(t)((abs(sawtooth(w*t,0.45))+sawtooth(w*t,0.45)))/2.*exp(-1j*k*w*t),0,T);

end


%Reconstruirea semnalului initial:
xr=0;

for k = -N:N

xr = xr + C(k+N+1)*exp(1j*k*w*t);

end

%Deoarece in formula, suma este inmultita cu 1/T, vom inmulti si semnalul
%rezultat xr cu 1/T
xr=xr/T;


%Reprezentarea semnalului initial x si a celui reconstruit xr:
figure(1);

hold on;
plot(t,x);

plot(t,real(xr),':r','Color',[0.7 0 0])
xlabel('Timpul[s]');
ylabel('xr(t)-semnalul reconstruit');
title(' Reprezentarea semnalului initial(albastru) si a celui reconstruit(rosu) ')
axis([-40 40 -0.1 1.1])

hold off;



figure(2);

subplot(2,1,1)
hold on;
plot(t,x);
xlabel('Timpul[s]');
ylabel('x(t)-semnalul initial');
title(' Reprezentarea semnalului initial ')
axis([-40 40 -0.1 1.1])


%Reprezentarea semnalului reconstruit xr:

subplot(2,1,2)
plot(t,real(xr),':r')
xlabel('Timpul[s]');
ylabel('xr(t)-semnalul reconstruit');
title(' Reprezentarea semnalului reconstruit ')
axis([-80 80 -0.1 1.1])

hold off;

%Reprezentarea grafica a spectrului de amplitudini
figure(3);

hold on;
plot((-N:N)*w,2*abs(C)); %Ak=2*|Ck|


for k=-N:N
stem(k*w,2*abs(C(k+N+1)),'.r'); %Functia stem realizeaza o reprezentare in forma �discreta� a datelor.
end  ;



xlabel('Pulsatia w [rad/s]');
ylabel('Amplitudinile Ak');
title('Spectrul de Amplitudini');
axis([-4 4 -0.1 20])

hold off



% Spectrul de amplitudini este un grafic cu valori discrete, avand
% A(-k)=A(k), deci este un grafic simetric fata de A0.
% Semnalul initial poate fi scris ca suma de semnale elementare.
% Putem observa din grafice ca semnalul reconstruit are perioada de 2 ori
% mai mare decat perioada semnalului initial si durata D jumatate din cea
% initiala.