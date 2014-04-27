%%Chapter 5 Problems
%
% <Brett Davis>
%  <20140306>
%   <Gilat, 3rd Edition>
%    <Problems 2 4 7 10 11 16 18>

%switch

if 1


%% Problem 2
clear all
close all
% Plot the given function
 
%calls funciton f(t)

t = [-10:.03:10];

y = f(t);

plot(t,y,'c','LineWidth',4)
hold on
plot(t,y,'r')
xlabel('t','FontSize',14)
ylabel('f(t)','FontSize',14)
title('Chapter 5 | Problem 2','FontSize',14)
hold off

%% Problem 4
clear all
close all
%Plot given function

x1 = linspace(-4,1.7,300);
x2 = linspace(2.3,8,300);

y1 = fIV(x1);
y2 = fIV(x2);

plot(x1,y1)
hold on
plot(x2,y2)	

%% Problem 7
clear all 
close all
%%Graph of an electrical circut that includess a voltage source V_s with 
%an internal resistance r_s and a load resistance r_l shown in a given 
	
%calls function P(r_L)

R_L = [1:.03:10];

P   = P(R_L);

plot(R_L,P,'g','LineWidth',2)
title('Chapter 5 | Problem 4','FontSize',14)
xlabel('Load Resistance','Fontsize',12)
ylabel('Power','Fontsize',12)

%switchlet
end

%% Problem 10
clear all
close all
%The position of a sqirrel running on a grass field is represented by
%the given equation\

% Problem 10 switch
if 1

% calls the function squirrelPos.m

%A)) Plot the function of the squirrel for 0-->30 seconds

t = [0:30];

[x,y] = squirrelPos(t);

plot(x,y)
line(0:100,0)
hold on
plot(x(1),y(1),'r*')
plot(x(31),y(31),'r^')
ylabel('Time','FontSize',12)
ylabel('Location of Squirrel','FontSize',12)
title('Chapter 5 | Problem 10-A','FontSize',16)
hold off

%B) Plot the length of the position vector r(t) of the squirrel for t 0:30

figure
vecLen = sqrt(x.^2 + y.^2);
plot(t,vecLen)
ylabel('Time','FontSize',12)
ylabel('Length of Position Vector','FontSize',12)
title('Chapter 5 | Problem 10-B','FontSize',16)

%C) Plot a third plot of angle theta of the position vector for t 0:30

%calls function theta(t)

figure
theta = theta(t);
plot(t,theta)
ylabel('Time','FontSize',12)
ylabel('Theta Values (degrees)','FontSize',12)
title('Chapter 5 | Problem 10-C','FontSize',16)

%switchlet
end


%%Problem 11
%clear all
%close all
% The relationship between relative luminocity L/L_sun from the table 
% the relative radius and the relative temperature is moddled by a given
% equation.

%problem 11 switch
if 1;

%...I couldnt figure out this one haha.

%switchlet
end

%% Problem 16
clear all
close all
%The dynamic loss and storage moduli G' and G'' respectively are mesaures
%of material mechanical response to harmonic loading. For many biological
%materials these moduli can be described by Fung's model {given}.
%Plot G' and G'' versus w (two seperate plots on the same page for:

%switch
if 1;

%vars

G_inf = 5; %ksi

c     = 0.05;

t_1   = 0.05; %secs

t_2   = 500; %secs

w     = linspace(.0001,1000,1000);

%main

G_prime = G_inf .* (1+(c./2).*log((1+((w.*t_2).^2))./(1+((w.*t_1).^2))));

G_Dprime= c * G_inf*(atan(w*t_2)-atan(w*t_1));

%plot

semilogx(w,G_prime,'g','LineWidth',2)
hold on
semilogx(w,G_Dprime,'r','LineWidth',2)
xlabel('w')
legend('G_p','G_p_p',0)
title('Chapter 5 | Problem 16','FontSize',14)

%switchlet
end

%% Problem 18
clear all
close all
%the ideal gas equation states that PV/RT = n where p is the pressure
% V is the volume, T is the temperature, R is a constant and n is the number
%of Moles. It doesnt hold true for high pressures though. Make a plot for
% Nitrogen increasing in pressure using the ideal gas law and van der Walls
% equation.

%switch
if 1;

%vars

a = 1.39;

b = 0.0391;

V = [0.08:0.02:6]; %Liters

n = 1;

T = 300;

R = 0.08206;
%main

P   = (n * R * T)./V;

P_2 = ((n.*R.*T)./(V-n.*b))-((n.^2)*a)./V.^2; 

%plot

plot(V,P,'LineWidth',2)
hold on
plot(V,P_2,'r--')
legend('Ideal','van der Waals',0)
title('Chapter 5 | Problem 18','FontSize',14)
xlabel('Volume')
ylabel('Pressure')

%switchlet
end
