function varargout = cube(pos,width,ccolor)
%CUBE Generate a three-dimensional cube
% CUBE(P, W, C) creates a surface plot of a cube with one corner defined
% by the 3-element vector P, the width in each dimension defined by the
% 3-element vector W, and the color index into the current colormap
% defined by the scalar C.
%
% H = CUBE(...) creates the surface plot and returns the handle H to each
% graphical object created.
%
% [X Y Z C] = CUBE(...) does not generate the surface plot and returns
% the data necessary to create the surface using:
% SURF(X,Y,Z,C,'cdataMapping','direct');
%
% Example:
% cube([2 3 1], [1 1 2], 60)
% axis([0 5 0 5 0 5])
% source: https://www.mathworks.com/matlabcentral/newsreader/view_thread/122499

x = [NaN 0 1 NaN;0 0 1 1;0 0 1 1;...
  NaN 0 1 NaN;NaN 0 1 NaN;NaN NaN NaN NaN]*...
width(1) + pos(1);
y = [NaN 0 0 NaN;0 0 0 0;1 1 1 1;...
  NaN 1 1 NaN;NaN 0 0 NaN;NaN NaN NaN NaN]*...
width(2) + pos(2);
z = [NaN 0 0 NaN;0 1 1 0;0 1 1 0;...
  NaN 0 0 NaN;NaN 0 0 NaN;NaN NaN NaN NaN]*...
width(3) + pos(3);
c = ccolor*ones(6,4);
if nargout == 0
  surf(x,y,z,c,'cdataMapping','direct');
elseif nargout == 1
  varargout = {surf(x,y,z,c,'cdataMapping','direct')};
else
  varargout = {x y z c};
end 