%% Part B ----------------------------------------------------------------


%% Part i

% Get all values from the user
prompt = 'Please enter a value for w0: ';
w0 = input(prompt);

prompt = 'Please enter a value for A1: ';
A(1) = input(prompt);

prompt = 'Please enter a value for A2: ';
A(2) = input(prompt);

prompt = 'Please enter a value for A3: ';
A(3) = input(prompt);

prompt = 'Please enter a value for phi1 in degrees: ';
phi_degree(1) = input(prompt);

prompt = 'Please enter a value for phi2 in degrees: ';
phi_degree(2) = input(prompt);

prompt = 'Please enter a value for phi3 in degrees: ';
phi_degree(3) = input(prompt);

% prinicple interval phi value
phi_pr(1) = rem(phi_degree(1),360);
phi_pr(2) = rem(phi_degree(2),360);
phi_pr(3) =  rem(phi_degree(3),360);

%% Part ii and Part iii
% Calculate the summation sinusoidal
sumRe = 0.0;
sumIm = 0.0;

% Calculate real part of three phasors
for i = 1:3
    Re = ( A(i) * cosd(phi_pr(i)) );
    sumRe = sumRe + Re;
end

% Calculate imaginary part of three phasors
for i = 1:3
    Im = ( A(i) * sind(phi_pr(i)) );
    sumIm = sumIm + Im;
end

% Find the amplitude of the final phasor
A_fin = sqrt(sumRe^2 + sumIm^2);

% Find phi of the final phasor
phi_fin = atand(sumIm/sumRe);
phi_fin = degtorad(phi_fin);

fprintf("Value of A: %f \n", A_fin);
fprintf("Value of phi: %f \n", phi_fin);

% Finally print the sum as requested
fprintf("x(t) = %.2f cos(%d t + %.2f ) \n", A_fin, w0, phi_fin);

%% Part iv

% t starts from 0 with an interval of 0.01 and goes up to 0.01
t = 0:0.001:30;

e = exp(1),
j = sqrt(-1);

p(1) = ( A(1) * e^( (phi_pr(1))* j ) );
% plot the graph
figure('units','normalized','outerposition',[0 0 1 1]) % fullscreen

plot(real(p(1)), imag(p(1)), '.k')

hold on % this makes program to keep the existing plot to stay 
% and draw the new plot on top of it

% several settings
grid on;
xlabel('Real');
ylabel('Imaginary');
title('Phasors Plots');


p(2) = ( A(2) * e^( (phi_pr(2))* j ) );
plot(real(p(2)), imag(p(2)), '.k')
hold on % this makes program to keep the existing plot to stay 

p(3) = ( A(3) * e^( (phi_pr(3))* j ) );
plot(real(p(3)), imag(p(3)), '.k')
hold on % this makes program to keep the existing plot to stay 

% p(4) will be the final phasor's phasor
p(4) = ( A_fin * e^( (phi_fin)* j ) );
plot(real(p(4)), imag(p(4)), '.k')















