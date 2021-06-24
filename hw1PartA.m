
%% Part A ----------------------------------------------------------------

% Set Student ID here
prompt = 'Please enter your id: ';
id = input(prompt);
%id = 21202377;

% Convert id to string and iterate through the new string
% The loop goes goes from 0 to l. We phill an array of zeroes
% with our id digits in the correct order.
id_string = num2str(id);
l = length(id_string);
digits_arr = zeros(1,l);
for i = 1:l
    digits_arr(i) = str2num(id_string(i));
end

% set w0
w0 = (digits_arr(5)*10)+digits_arr(6);

% set A's
A1 = digits_arr(6);
A2 = digits_arr(7);
A3 = digits_arr(8);

% set phi values
phi1_degree = (digits_arr(4)*100) + (digits_arr(5)*10) + digits_arr(6);
phi2_degree = (digits_arr(5)*100) + (digits_arr(6)*10) + digits_arr(7);
phi3_degree = (digits_arr(6)*100) + (digits_arr(7)*10) + digits_arr(8);

% prinicple interval phi value
phi1_pr = rem(phi1_degree,360);
phi2_pr = rem(phi2_degree,360);
phi3_pr =  rem(phi3_degree,360);

% phi values in rads
phi1_rad = degtorad(phi1_pr);
phi2_rad = degtorad(phi2_pr);
phi3_rad = degtorad(phi3_pr);

fprintf("\n \n");

% Print all the values
% W0
fprintf("Frequency \n");
fprintf("w0 = %d \n",w0);

fprintf("\n \n");

% Amplitudes
fprintf("Amplitudes \n");
fprintf("A1 = %d \n",A1);
fprintf("A2 = %d \n",A2);
fprintf("A3 = %d \n",A3);

fprintf("\n \n");

% Phi in degrees
fprintf("Phi in degrees \n");
fprintf("Phi1 in degrees = %d \n",phi1_degree);
fprintf("Phi2 in degrees = %d \n",phi2_degree);
fprintf("Phi3 in degrees = %d \n",phi3_degree);

fprintf("\n \n");

% Phi in principle interval
fprintf("Phi in principle interval \n");
fprintf("Phi1 in principle = %d \n",phi1_pr);
fprintf("Phi1 in principle = %d \n",phi2_pr);
fprintf("Phi1 in principle = %d \n",phi3_pr);

fprintf("\n \n");

% Phi principle in rads
fprintf("Phi principle in rads \n");
fprintf("Phi1 in rads = %f \n",phi1_rad);
fprintf("Phi2 in rads = %f \n",phi2_rad);
fprintf("Phi3 in rads = %f \n",phi3_rad);

fprintf("\n \n");





