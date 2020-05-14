function RMSE = rmse(y,y_hat)
RMSE = sqrt( sum((y(:)-y_hat(:)).^2) / numel(y));
end