function [m_x,o_x] = mean_var_logexp(m,o)
% ������ �������� �������� � ������������������� ����������,
% ��������������� ��������������� ������������� 
    m_x = exp(m+power(o,2)/2);
    o_x = exp(m)*sqrt(exp(power(o,2)*(exp(power(o,2))-1)));
    


end

