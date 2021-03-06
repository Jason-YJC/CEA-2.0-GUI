function [gamb,cth,cf,ispth] = myequationo(Trial)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here B1:B1
%%Equations for big Gamma and C*theoretical (cth)
% Variables

gam = xlsread('CEAdata.xls','Sheet2',sprintf('%s%d', 'E', Trial+1));
mw = xlsread('CEAdata.xls','Sheet2',sprintf('%s%d', 'D', Trial+1));
Tc = xlsread('CEAdata.xls','Sheet2',sprintf('%s%d', 'C', Trial+1));
%Equations
gamb = sqrt(gam)*(2/(gam + 1))^((gam + 1)/(2*(gam - 1)));
cth = (1/gamb)*sqrt(((8314)/mw)*Tc) ;
cf = gamb*sqrt(((2*gam)/(gam-1))*((1-(14.6959/1000)^((gam -1)/gam))));
ispth = ((cf*cth)/(9.80665));
end
