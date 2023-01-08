function [theata1,theata2,theata3,theata4 ]= backProbagation(w2,w3,w4,a4,z3,z2,z1,consg)
        %%
        
        theata4 = a4 - consg;
        theata3 = w4' * theata4 .* sigmoidGradient(z3);
        theata2 = w3' * theata3 .* sigmoidGradient(z2);
        theata1 = w2' * theata2 .* sigmoidGradient(z1);

end

%%
% Backpropagate the error to the hidden layer
      %theata2 = error .* sigmoidDerivative(z2);
      %W2 = W2 + learningRate * theata2 * a1';
      %b2 = b2 + learningRate * theata2;

      % Backpropagate the error to the input layer
      %theata1 = sigmoidDerivative(z1) .* (W2' * theata2);
      %W1 = W1 + learningRate * theata1 * x';
      %b1 = b1 + learningRate * theata1;