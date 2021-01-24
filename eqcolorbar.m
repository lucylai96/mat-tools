function eqcolorbar(m1, m2)

subplots = [1:m1*m2];

max = -inf;
min = inf;

target_subplots = find(ismember([1:m1*m2],subplots));

for i = target_subplots
	subplot(m1,m2,i)
	lims = caxis;
	if lims(1)<min
		min = lims(1);
	end
	if lims(2)>max
		max = lims(2);
	end
end

for i = target_subplots
	subplot(m1,m2,i)
    caxis([min max])
end

c = colorbar;
c.TickDirection = 'out';

end