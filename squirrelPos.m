function [x,y] = squirrelPos(t)

	x = (-.28.*(t.^2)) + 6.5.*t + 61

	y = (0.18.*(t.^2)) - 8.5.*t + 65
