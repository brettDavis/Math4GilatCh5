function [theta] = theta(t)

	[x,y]  = squirrelPos(t)	

	if y < 0

		theta = atand(x./y)
	else

	theta  = atand(y./x)

	end
