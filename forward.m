function [a1 , z1 ,a2,z2,a3,z3,a4,z4] = forward(err,w1,w2,w3,w4)

    a1 = err*w1;
    z1 = sigmoid(a1);
    %bias 
    b=zeros(length(z1),1);
    z1 = cat(2,b,z1);

    a2 = z1.'.*w2; 
    z2 = sigmoid(a2);

    a3 = z2.*w3;
    z3 = sigmoid(a3);
    a4 = z3.*w4;
    z4 = sigmoid(a4);
end
 

