function stderror=sem(data,dim)
stderror = std(data,[],dim)./sqrt(size(data,dim));
end