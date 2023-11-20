% =======================================================================
% ============== TANQUES ACOPLADOS - LINEARIZAÇÃO DO MODELO =============
% =======================================================================
clear all;close all;clc;

%Parametros Fixos
Kac = 20;
K1 = 25;
K2 = K1;

%Ponto de Equilibrio
H1 = 25;
H2 = 21;
Q1 = 100;
Q2 = 90;
Area1 = area1(H1);
Area2 = area2(H2);

syms h1 h2 q1 q2

% ======> EQUAÇÃO DO TANQUE 1

Qacop = Qac(H1,H2);
f1 = (q1 - K1*sqrt(h1) + Qacop)/Area1;
f2 = (q2 - K2*sqrt(h2) - Qacop)/Area2;

%A
df1_dh1 = diff(f1,1,h1);
df1_dh2 = diff(f1,1,h2);
df2_dh1 = diff(f2,1,h1);
df2_dh2 = diff(f2,1,h2);

%B
df1_dq1 = diff(f1,1,q1);
df1_dq2 = diff(f1,1,q2);
df2_dq1 = diff(f2,1,q1);
df2_dq2 = diff(f2,1,q2);

% ========> STATE SPACE
h1 = H1;
h2 = H2;
q1 = Q1;
q2 = Q2;

disp('Matrizes do Espaço de Estados')
A = [double(subs(df1_dh1)) double(subs(df1_dh2));
        double(subs(df2_dh1)) double(subs(df2_dh2))]

B = [double(subs(df1_dq1)) double(subs(df1_dq2));
        double(subs(df2_dq1)) double(subs(df2_dq2))]

C = [1 0;0 1]

D = [0 0; 0 0]

%Chamando arquivo do Simulink
sim('TanquesAcoplados')
disp('Simulação Concluída')

% Gs = ss(A,B,C,D)
% Opt = stepDataOptions('StepAmplitude',Q1)
% step(Gs,Opt)    


