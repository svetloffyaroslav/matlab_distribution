%   model_lognorm.m
%   
%   Copyright (c) 2018 by Svetlov Yaroslav
%   Email  : svetlov.yaroslav@gmail.com
%   vk.com : https://vk.com/id52304190
%   
%   ������: MATLAB Version: 8.2.0.701 (R2013b)
%   Description:
%   ������ ������������ �������������� �������������:
%   ������� �������� �� �������������� ��������� �������������� � ������:
%       ������� �.�., �������� �.�., ���� �.�./����������� ��������
%       � �����������������. ����������./��� ���. �.�. �������� - �.:
%       ������������, 2003. - 480 �.,��.
%   ������������ ��������:
%   (1) - (����� 3.1.5 - ���.139);
%   (2) - //-//;
%   (3) - (3.20);
%   (4) - (����� 3.1.5 - ���.139);;
%
%   ������ ���������� �������������� �������:
%       - norm_distibution(N); - ��� ������� � ������  ��������� �������������� ��������� ��������
%                                � �����������;
%       - logexp_graph(m,o,X_gen);  - ��� ������� � ������ �������
%                                ��������� �������������;
%       - mean_var_logexp(m,o) - ��� ������� �������� �������� � ���.
%   ��������� ��������� 11.01.2017

clc
clear
disp('���������� � ������������� �������������');

%------------------------------------------���� ����������--------------------------------------------------
disp('������� ����� ������������������ ��������� �����:');   % ��������� � Command Window
N = input('N = ');                                           % N - ����� ������� ������������������ ��������� �����

                                     
%-----------------------------------------------------------------------------------------------------------
X_gen = 0:1:N-1;                                            % X - ���������� ����� <��������� ��������>:<���>:<������������ ��������>

% ������������� ������������� ������������ �� ���������� �������������,
% ������� ������� ������ ��� ������� ����������� �������.:
disp('��� ������ ������� ���������� ��������� �������� ������� <����>');
pause;
Z = norm_distibution(N);                                    % ������� ��� ����������� ������������� 

disp('��� ������ ������� ��������������� �������������� ��������� �������� ������� <����>');
pause;
Y_gen = exp(Z);                                             % (1)                    
figure('Name','���������� �������������','NumberTitle','off'); 
title('������ ���������� �������� � �������������� ��������������');
plot(X_gen,Y_gen);    % ���������� ������� � �������� �������� � ������������� ����� ��������� ����������
grid

% ������ ������������� ������������� ��� �������� �������� � ���������
Y_gen_log = log10(Y_gen);                                   %(2)
m = sum(Y_gen_log')/N;
Y_gen_log_m_2 = power((Y_gen_log - m),2);
o = sum(Y_gen_log_m_2')/N;

disp('��� ���������� ��������� ����������� ��� ��������������� ������������� ������� <����>');
pause;
w_x = logexp_graph(m,o,X_gen);                              % (3)

disp('��� ������ �������� �������� � ������������������� ���������� ��� ��������������� �������������� ������� <����>');
pause;
[m_X,o_X] = mean_var_logexp(m,o);
disp(strcat('������� ��������: ',num2str(m_X)));
disp(strcat('������������������ ����������: ',num2str(o_X)));

disp('���������� ������� model_lognorm.m ���������');
%-----------------------------------------------------------------------------------------------------------



