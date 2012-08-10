function M = quat2rotmat(q)
%  from http://software.intel.com/file/37726

w=q(1); x=q(2); y=q(3); z=q(4);

M = [ 1 - 2*y*y - 2*z*z, 2*x*y + 2*w*z, 2*x*z - 2*w*y; ...
  2*x*y - 2*w*z, 1 - 2*x*x - 2*z*z, 2*y*z + 2*w*x; 
  2*x*z + 2*w*y, 2*y*z - 2*w*x, 1 - 2*x*x - 2*y*y ];
  