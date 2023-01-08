  function [z4]=  neural_network(consg, err)
   
    epochs = 5;
    learningRate = 0.1;
    w1 = 1;
    b1 = 0.1;
    w2 = 1;
    b2 = 0.1;
    w3 = 1;
    b3 = 0.1;
    w4 = 1;
    b4 = 0.1;
    for i=0:epochs
        [a1,z1 ,a2,z2,a3,z3,a4,z4] = forward(err,w1,w2,w3,w4,b1,b2,b3,b4);
        %w2,a1,z0,z1,z2,y
        [theata1,theata2,theata3,theata4 ]= backProbagation(w2,w3,w4,a4,z3,z2,z1,consg);
        % Update weights and biases
        w4 = w4 - learningRate * theata4 .* a3';
        b4 = b4 - learningRate * theata4;
        w3 = w3 - learningRate * theata3 * a2';
        b3 = b3 - learningRate * theata3;
        w2 = w2 - learningRate * theata2 .* a1';
        b2 = b2 - learningRate * theata2;
        w1 = w1 - learningRate * theata1 * err;
        b1 = b1 - learningRate * theata1;                           
    end                            
    
end                          
                           
%backProbagation(w2,a1,z1,a2,z2,a3,z3,a4,z4,consg)                             
%backProbagation(w2,a1,z0,z1,z2,y)                             