%%Chapter 5 Problems
%
% <Brett Davis>
%  <20140306>
%   <Gilat, 3rd Edition>
%

%% Problem 2
clear all
close all
% plot a given function for x = [-10:10]
%

x = [-10:10]

y = 5./(1+exp(5.5-1.5.*x)-(x.^2./20))

plot (x,y,'red')
title('\fontname{arial}Chapter 5 Problem 2','fontsize',18)
xlabel('X values')
ylabel('Y values')
