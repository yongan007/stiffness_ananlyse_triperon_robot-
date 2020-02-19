
L1 = 300e-3;
L2 = 300e-3;
L3 = 100e-3 ;

%1st leg 
p_x = p1;
p_y = p2;
p_z = p3;

q1,q2,q3 = inv_k(-p_y,p_z);
q4,q5,q6 = inv_k(p_x,-p_z);
q7,q8,q9 = inv_k(p_y,p_x);


function [d1,q1,q2,q3] = inv_k(px,py,pz)
d1= pz
c2 = (px^2 + py^2 - a1^2 -a2^2)/(2*a1*a2);
s2 = sqrt(1-c2^2);
s1 = ((a1+a2*c2)*py-a2*s2*px)/(px^2+py^2);
c1= ((a1+a2*c2)*px+a2*s2*py)/(px^2+py^2);

q1 = atan2(s1,c1);
q2 = atan2(s2,c2);
q3 = -q1-q2;
end
% 
% %2nd leg
% s4 = ((a1+a2*c2)*(-pz)-a2*s2*px)/(px^2+(-pz)^2);
% c4= ((a1+a2*c2)*px+a2*s2*(-pz)/(px^2+(-pz)^2)
% c5 = (px^2 - pz^2 - a1^2 -a2^2)/(2*a1*a2);
% s5 = sqrt(1-c2^2);
% 
% q4= atan2(s4,c4);
% q5= atan2(s5,c5);
% q6=fi2
% 
% %3rd leg
% s4 = ((a1+a2*c2)*(-pz)-a2*s2*px)/(px^2+(-pz)^2);
% c4= ((a1+a2*c2)*px+a2*s2*(-pz)/(px^2+(-pz)^2)
% c5 = (px^2 - pz^2 - a1^2 -a2^2)/(2*a1*a2);
% s5 = sqrt(1-c2^2);
% 
% q7=
% q8=
% q9=fi3
% 
% 
