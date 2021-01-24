function stderror=sem(data,dim)
stderror = nanstd(data,[],dim)./sqrt(size(data,dim));
end