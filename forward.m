function [a1,z1,a2,z2,a3,z3,a4,z4] = forward(err,consg,w1,w2,w3,w4,b1,b2,b3,b4)
    
    % First hidden layer
     z1 = w1 * err + b1;
     a1 = sigmoid(z1);
    
    % Second hidden layer
     z2 = w2 .* a1 + b2;
     a2 = sigmoid(z2);
    
    % Third hidden layer
     z3 = w3 .* a2 + b3;
     a3 = sigmoid(z3);
    
    % Output layer
     z4 = w4 .* a3 + b4;
     a4 = sigmoid(z4);
    
end
 

