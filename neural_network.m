function [z4,z3,z2,cost] =  neural_network(consg, err)
    epochs = 50;
    learningRate = 0.1;
    w1 = 1;
    b1 = 0.1;
    w2 = 1;
    b2 = 0.1;
    w3 = 1;
    b3 = 0.1;
    w4 = 1;
    b4 = 0.1;
    for i=1:epochs
        [a1,z1 ,a2,z2,a3,z3,a4,z4] = forward(err,consg,w1,w2,w3,w4,b1,b2,b3,b4);
        %w2,a1,z0,z1,z2,y
        [theata1,theata2,theata3,theata4 ]= backProbagation(w2,w3,w4,a4,z3,z2,z1,consg);
%         w1 = w1 - learningRate*Adam(theata1,w1);
%         w2 = w2 - learningRate*Adam(theata2,w2);
%         w3 = w3 - learningRate*Adam(theata3,w3);
%         w4 = w4 - learningRate*Adam(theata4,w4);        
%         b1 = b1 - learningRate*Adam(theata1,b1);
%         b2 = b2 - learningRate*Adam(theata2,b2);
%         b3 = b3 - learningRate*Adam(theata3,b3);
%         b4 = b4 - learningRate*Adam(theata4,b4);
        w4 = w4 - learningRate *theata4.*a3';
        b4 = b4 - learningRate *theata4;
        w3 = w3 - learningRate *theata3.*a2';
        b3 = b3 - learningRate *theata3;
        w2 = w2 - learningRate *theata2.*a1';
        b2 = b2 - learningRate *theata2;
        w1 = w1 - learningRate *theata1.*err;
        b1 = b1 - learningRate *theata1;  
        % Adaptive learning rate
        %learningRate = learningRate / (1 + i * 0.01);
        cost = (1 / 2) * (z4 - consg)^2;
    end                              
end 

