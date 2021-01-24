function subprettyplot(m1, m2, fz)

subplots = [1:m1*m2];

target_subplots = find(ismember([1:m1*m2],subplots));

for i = target_subplots
	subplot(m1,m2,i)
    prettyplot(fz)
end
end