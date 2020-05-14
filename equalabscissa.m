%    equalabscissa.m
%
%	usage: equalabscissa(m1, m2)
%	by: mehrdad jazayeri
%	last update: June 2016 by lucy lai
% 	purpose:	it gets m1 and m2 as the number of rows and cols
% 				of a multi-plot figure and makes the axes spanned
%				by m1 and m2 to have the same abscissa.
%
% update: now a number of specific subplots in the m1 x m2 can be specified
%
function equalabscissa(m1, m2)

subplots = [1:m1*m2];

xmax = -inf;
xmin = inf;

target_subplots = find(ismember([1:m1*m2],subplots));

for i = target_subplots
	subplot(m1,m2,i)
	thisx = xlim;
	if thisx(1)<xmin
		xmin = thisx(1);
	end
	if thisx(2)>xmax
		xmax = thisx(2);
	end
end

for i = target_subplots
	subplot(m1,m2,i)
 	set(gca,'XLim',[xmin xmax]);
end

%% now y axes

ymax = -inf;
ymin = inf;

target_subplots = find(ismember([1:m1*m2],subplots));

for i = target_subplots
	subplot(m1,m2,i)
	thisy = ylim;
	if thisy(1)<ymin
		ymin = thisy(1);
	end
	if thisy(2)>ymax
		ymax = thisy(2);
	end
end

for i = target_subplots
	subplot(m1,m2,i)
 	set(gca,'YLim',[ymin ymax]);
end


end
