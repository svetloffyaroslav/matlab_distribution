%   model_exp.m
%   ����������������� �������������
%   
%   Copyright (c) 2018 by Svetlov Yaroslav
%   Email  : svetlov.yaroslav@gmail.com
%   vk.com : https://vk.com/id52304190
%   
%   ������: MATLAB Version: 8.2.0.701 (R2013b)
%   Description:
%   ��������, ������������ ������������� ����������������� �������������:
%   ������� �������� �� �������������� ��������� �������������� � ������:
%       ������� �.�., �������� �.�., ���� �.�./����������� ��������
%       � �����������������. ����������./��� ���. �.�. �������� - �.:
%       ������������, 2003. - 480 �.,��.
%   ������������ ��������:
%   (1) - (3.6) (����� 3.1.1 - ���.123);
%   (2) - (3.7);
%   (3) - ������� ��������� � ���.������. �� ���. 125;
%   (4) - (3.8).
%
%   ������ ���������� �������������� �������:
%       - exp_graph(L,X) - ��� ������� � ������ ������� ���;
%       - exp_distribution(L,X) - ��� ������� � ����� ������� �������
%       �������������;
%       - mean_var_exp(L)- ��� ������� �������� ��������� � ��������������� ��������.
%
%   ��������� ��������� 10.01.2017

clc                                             % ������� ���� Command Window
clear                                           % ������� Workspace
disp('���������������� �������������');
%------------------------------------------���� ����������--------------------------------------------------
disp('������� ����� ������������������ ��������� �����:');   % ��������� � Command Window
N = input('N = ');                                           % N - ����� ������� ������������������ ��������� �����

disp('������� �������� �������������:');             
L = input('L = ');
%-----------------------------------------------------------------------------------------------------------

%---------------------------------------------�������--------------------------------------------------------------------
X = 0:1:N-1;                                 % X - ���������� ����� <��������� ��������>:<���>:<������������ ��������>
% ������ ��������� ����������� �������������
disp('��� ���������� ������� �������������  ��������� � ������������� ������� <����>');
pause;
Y_graph_PRV = exp_graph(L,X);                           % (1)

% ������ ������� ������������� (�������������)
disp('��� ���������� ������� ������� ������������� ������� <����>');
pause;
Y = exp_distribution(L,X);                              % (2)

% �������������� �������� � ���������
disp('��� ������ �������� ��������������� �������� � ��������� ������� <����> ');
pause;
[teor_mat,teor_disp] = mean_var_exp(L);                 % (3)
disp(strcat('�������������� �������� m = ',num2str(teor_mat)));
disp(strcat('��������� o = ',num2str(teor_disp)));

% ������������� ������� ��������� ������� � ���������������� ��������������: 
Y_gen = -(1/L)*log(rand(1,N));                          % (4)

% ����� ��������
figure('Name','���������������� �������������','NumberTitle','off');    % � ��������� ����          
subplot(2,1,1);                                                         % ��������� �������� ������������ ���� �� ��������� ���� ��� ������ ����������� �������� - 1-�� ������� ������
plot(X,Y_gen),grid;                                                     % ���������� ������� ������� ��������� �������� � �����
title(strcat('������� � ���������������� �������������� ��� L =',num2str(L)));   % ��������� �������
subplot(2,1,2);                                                         % 2-�� ������ ������
% x_hist= 0:1:10;                                                       % ������ ���������� 
hist(Y_gen);                                                            % ���������� ����������� hist(y,x) (x - ������ ����������)
colormap('winter');                                                     % ������� ������ ��� ����������� - winter - ����-�������  
title('�����������');                                           

disp('���������� ������� model_exp.m ���������');