function [Y] = logexp_graph(m,o,X)
% ��������� ������������� 
% ������������ ��� ��������������� �������������
  log10_X_m_2_div_2_o = -(power((log10(X)-m),2))/2*o^2;
  Y = exp(log10_X_m_2_div_2_o)./X.*sqrt(2*pi)*o;
    
  % ����� ������� � ��������� ����
  figure('Name','������� ��������� ����������� ��������������� �������������','NumberTitle','off'); 
  plot(X,Y);    % ���������� ������� � �������� �������� � ������������� ����� ��������� ����������
  % ����������� ���� �������
  ylabel('w(x)');
  xlabel('x');
  grid;     % ��������� ������������ �����
    
    
    

end

