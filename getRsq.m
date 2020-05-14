function rsq = getRsq(data1, data2)
%input: get R squared values for a set of actual vs predicted data
%specs: data 1 and data 2 have to be the same size

rsq = (corr2(data1, data2))^2;
end