function bic_val = bic(n,p,nll)
% purpose: calculates BIC for any function 
% input: n, number of data points total across all conditions you are fitting
%        p, number of parameters of your model
%        nll, negative log likelihood (NLL) of your fitted model
% output: bic_val, the bayesian information criterion value of the model
% lower BICs are always better!!
%
% If ? BIC is less than 2, it is considered ?barely worth mentioning?.
% If ? BIC is between 2 and 6, the evidence against the other model is 
% positive, If ? BIC is between 6 and 10, the evidence for the best model
% and against the weaker model is strong. A ? BIC >10 means the evidence 
% favoring our best model vs the alternate is very strong indeed.
% 
% source: http://www.statisticshowto.com/bayesian-information-criterion/


bic_val = p*log(n)- 2*(-nll);
end