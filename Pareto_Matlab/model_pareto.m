%   model_pareto.m
%   
%   Copyright (c) 2018 by Svetlov Yaroslav
%   Email  : svetlov.yaroslav@gmail.com
%   vk.com : https://vk.com/id52304190
%   
%   ������: MATLAB Version: 8.2.0.701 (R2013b)
%   Description:
%   ������ ������������ ������������� ������������� ������:
%   ������� �������� �� �������������� ��������� �������������� � ������:
%       ������� �.�., �������� �.�., ���� �.�./����������� ��������
%       � �����������������. ����������./��� ���. �.�. �������� - �.:
%       ������������, 2003. - 480 �.,��.
%   ������������ ��������:
%   (1) - (3.5) (����� 3.1.1 - ���.117);
%   (2) - (3.1);
%   (3) - (3.3);
%   (4) - ������� ����������� ��������� ������ �� ���. 120.
%
%   ������ ���������� �������������� �������:
%       - pareto_graph(a,k,X) - ��� ������� � ������ ������� ���;
%       - mean_var_pareto(a,k) - ��� ������� ��������������� �������� �
%         ���������.
%   ��������� ��������� 10.01.2017

clc                                             % ������� ���� Command Window
clear                                           % ������� Workspace
disp('������������� ������');
%------------------------------------------���� ����������--------------------------------------------------
disp('������� ����� ������������������ ��������� �����:');   % ��������� � Command Window
N = input('N = ');                                           % N - ����� ������� ������������������ ��������� �����

disp('������� �������� �����:');             
a = input('a = ');

disp('������� ������ ��������� ��������:');
k = input('k = ');
%------------------------------------------------------------------------------------------------------------

%------------------------------------------�������-----------------------------------------------------------
X = 0:1:N-1;                                   % X - ���������� ����� <��������� ��������>:<���>:<������������ ��������>


% ������ ��������� ����������� �������������
disp('��� ���������� ������� �������������  ��������� � ������������� ������� <����>');
pause;
Y_graph = pareto_graph(a,k,X);                                  % (2)


% �������� ������������ ������� �������������
disp('��� ���������� ������� �������������  ��������� � ������������� ������� <����>');
pause;
Y_distub = pareto_distribution(a,k,X);

% �������������� �������� � ���������
disp('��� ������ �������� ��������������� �������� � ��������� ������� <����> ');
pause;
[teor_mat,teor_disp] = mean_var_pareto(a,k);                    % (3)
disp(strcat('�������������� �������� m = ',num2str(teor_mat)));
disp(strcat('��������� o = ',num2str(teor_disp)));


H = -(a-3)./ 2;                                                 % (4)
disp(strcat('���������� ������ H = ',num2str(H)));

% ������������� ������� ��������� ������� � �������������� ������: 
disp('��� ������������� ������� �������� ������� � �������������� ������ ������� <����> ');
pause;
Y_gen = k./((1-rand(1,N)).^a);                                 % (1)
% ����� ����� ������ - ������������ ������ ������� ������ rand();

% ����� ��������
figure('Name','�������������� ������','NumberTitle','off');    % � ��������� ����          
subplot(2,1,1);                                                % ��������� �������� ������������ ���� �� ��������� ���� ��� ������ ����������� �������� - 1-�� ������� ������
plot(X,Y_gen),grid;                                            % ���������� ������� ������� ��������� �������� � �����
title(strcat('������� � �������������� ������ ��� a =',num2str(a),' k =',num2str(k)));   % ��������� �������
subplot(2,1,2);                                                % 2-�� ������ ������
%x_hist= 0:0.1:1000;                                              % ������ ���������� 
hist(Y_gen);                                                   % ���������� ����������� hist(y,x) (x - ������ ����������)
colormap('winter');                                            % ������� ������ ��� ����������� - winter - ����-�������  
title('�����������');                                           
                           
disp('���������� ������� model_pareto.m ���������');
%-----------------------------------------------------------------------------------------------------------------

