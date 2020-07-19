function h = circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th)+ x;
yunit = r * sin(th) + y;
h = plot(xunit(1:25), yunit(1:25),'LineWidth',2);

end