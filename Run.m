% S -> the number of Susceptible individuals at each time step
% I -> the number of Infected individuals at each time step
% R -> the number of Recovered individuals at each time step

N=1000;  %Population Size

% initial condictions
i0=5;   
s0=N-i0; 
r0=0;    

T=100; % evaluation time


beta=0.2; % infectious rate
gamma= 0.05; % recover rate 


S0I0R0=[s0 i0 r0]; % initial conditions vector
Tspam=[0:0.1:T]; % time interval

%Numerical Integration
[T,Y] = ode45(@(t,Y) Fsir(t,Y,beta,gamma,N),Tspam,S0I0R0);


S=Y(:,1); % Solution S
I=Y(:,2); % Solution I
R=Y(:,3); % Solution R 

% plotting
plot(T,S,'k');
hold on;
grid on;
plot(T,I,'r--');
plot(T,R,'b-.');
title(['SIR model with parameters: \beta= ',num2str(beta),', \gamma= ',num2str(gamma), ', N=',num2str(N)])
xlabel('Time')
ylabel('Number of Individuals')
legend('S','I','R','Location','best')