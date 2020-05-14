function xstring(nums,labels)
%purpose: labeling the x axis with strings labels (in a cell)
set(gca,'xtick',nums,'xticklabel',labels)
prettyplot
end