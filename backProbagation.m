function [theata1,theata2,theata3,theata4 ]= backProbagation(w2,a1,z0,z1,z2,y)
        %%
        theata1 = z1-y;
        theata2 = z2.'*theata1;
        theata3 = (theata1.*w2.').*sigmoidGradient(a1);
        theata4 = z0.'*theata3;

end

