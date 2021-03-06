function [Y_normal] = norm_distibution(N)
% ���������� ���������������
% ������� �������� ������ ��������� ��������� �������������� ��������� ��������
% � ����������� 
  X = 0:N-1;
  Y_normal = randn(1,N);
    
  % ����� ������� � ��������� ����
  figure('Name','���������� �������������','NumberTitle','off'); 
  subplot(2,1,1);      % � ���� ����� ����� ��� 2-� �������� - ������� ������� 
  plot(X,Y_normal);    % ���������� ������� � �������� �������� � ������������� ����� ��������� ����������
  title('������ ��������� ��������� �������������� ��������� ��������'); %������ ��� ��������
  grid;                % ��������� ������������ �����
  
  subplot(2,1,2);      % ������ ������ � ����
  z = -3:0.1:4;        % ������ ������� ���������� ��� ����������� 
  hist(Y_normal,z);    % ������ �����������
  title('����������� ����������� ������������� c �������� ���������� 0,1');
  
  
end

