function dY= Fsir(t,Y,beta,gamma,N) % defining the function

S=Y(1); % extract the current values of
I=Y(2); % Susceptible (S), Infected (I), and Recovered (R)
R=Y(3); % individuals from the input vector Y

dY = zeros(3,1); % creates a column vector dY with 3 rows,
                 % all initially set to 0

dY(1)=-beta*S*I/N; 
dY(2)=beta*S*I/N-gamma*I; % the rate of change of S, I, R
dY(3)=gamma*I;

end