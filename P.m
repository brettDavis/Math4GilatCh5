function P = P(r_L)

%vars
v_S = 12;

r_S = 2.5;
	
%main
P = ((v_S.^2)*r_L)./(r_L + r_S).^2;
