function colors=gradientCol(len,col)
% purpose: gradient colors
% input: how many colors you want to make between the two colors
% current: has red, green, and blue gradients. can add to it in the future/make diff variants by making different color maps

if col == 1 %blue
    c_max = [0.6 0.6 0.9];
    c_min = [0 0 0.4];
    colors = [linspace(c_max(1),c_min(1),len)', linspace(c_max(2),c_min(2),len)', linspace(c_max(3),c_min(3),len)'];
elseif col==2 %red
    c_max = [0.9 0.6 0.6];
    c_min = [0.4 0 0];
    colors = [linspace(c_max(1),c_min(1),len)', linspace(c_max(2),c_min(2),len)', linspace(c_max(3),c_min(3),len)'];
elseif col ==3 %green
    c_max = [0.6 0.9 0.6];
    c_min = [0 0.4 0];
    colors = [linspace(c_max(1),c_min(1),len)', linspace(c_max(2),c_min(2),len)', linspace(c_max(3),c_min(3),len)'];
end

end