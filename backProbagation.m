function [theata1,theata2,theata3,theata4 ]= backProbagation(w2,a1,z1,a2,z2,a3,z3,a4,z4,consg)
        %%
        theata1 = z1-consg
        theata2 = z2.'.*theata1
        theata3 = (theata2.*w2.').*sigmoidGradient(a1)
        theata4 = (z3.'.*theata3)*sigmoidGradient(a4)

end

