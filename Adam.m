function [updated_weight] = Adam(theata, weight)
    alpha = 0.001;
    beta1 = 0.9;
    beta2 = 0.999;
    epsilon = 10^-8;
    m = 0;
    v = 0;
    t = 0;
    t = t + 1;
    m = beta1*m + (1-beta1)*theata;
    v = beta2*v + (1-beta2)*(theata.^2);
    m_hat = m/(1-beta1^t);
    v_hat = v/(1-beta2^t);
    updated_weight = weight - alpha*m_hat/(sqrt(v_hat) + epsilon);
end
