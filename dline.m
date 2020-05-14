% dline.m
%
%      usage: dline()
%         by: mjaz
%       date: 05/01/07
%       e.g.: 
%    purpose: plot a diagonal line
%
function retval = dline(varargin)

args = varargin;
nargs = nargin;
ax=[];
if (nargs > 0) && (numel(args{1}) == 1) && ...
      ishandle(args{1}) && strcmp(get(args{1},'type'),'axes');
  ax = args{1};
  args = args(2:end);
  nargs = nargs-1;
else
  ax = gca;
end

axes(ax);

%eval(evalargs(args));

if exist('Color')~=1, Color = 'k';, end
if exist('LineStyle')~=1, LineStyle = '--';, end
if exist('LineWidth')~=1, LineWidth = 2;, end
if exist('delta')~=1, delta = 0;, end

stat_stack = ishold;		
hold on

xlims = xlim;
ylims = ylim;

ll = max([xlims(1) ylims(1)]);
ur = min([xlims(2) ylims(2)]);
retval = plot([ll ur]+delta/2,[ll ur]-delta/2,'Color',Color,'LineWidth',LineWidth,'LineStyle',LineStyle);
		
if ~stat_stack, hold off;, end
