clc; 
clear all;
close all;

disp('++++++++ESCUELA POLITÉCNICA NACIONAL++++++++')
disp('Programa para ver el numero de canales y las frecuencias centrales para DWDM')

disp('SELECCIONE EL ANCHO DE BANDA A OBTENER LOS DATOS')
disp('1. Ancho de banda de 12.5 GHz')
disp('2. Ancho de banda de 25.0 GHz')
disp('3. Ancho de banda de 50.0 GHz')
disp('4. Ancho de banda de 100 GHz')
disp('5. Ancho de banda de 200 GHz')
c= 2.99792458e8;


sel=input('Ingrese el ancho de banda que desea trabajar: ');


switch sel
    case 1
%% Para la frecuencia de 12,5GHz
n_1_12=227:-1:-123;
fr_c_12=(193.1+(n_1_12*0.0125))'
lambda_1_12=((c./(fr_c_12.*1e12))/1e-9)

%Representación de los datos 
FRECUENCIA_12 = [fr_c_12];
LAMBDA = [lambda_1_12];
T_1=table(FRECUENCIA_12,LAMBDA)

%% 
%can = length(fr_c_12)+length(fr_c_1_12)+length(fr_c_2_12);
can = length(n_1_12);
fprintf('Número de canales para 12.5GHz es %d',can);
    case 2
        %% Para la frecuencia de 25GHz
n_1=114:-1:-61;
fr_c=(193.1+(n_1*0.025))';
lambda_1=((c./(fr_c.*1e12))/1e-9);

%Representación de los datos 
FRECUENCIA_25 = [fr_c];
LAMBDA = [lambda_1];
T_2=table(FRECUENCIA_25,LAMBDA)

%% 
can = length(n_1);
fprintf('Número de canales para 25GHz es %d',can);
    case 3
     %% Para la frecuencia de 50GHz
n_1_50=57:-1:-30;
fr_c_50=(193.1+(n_1_50*0.05))';
lambda_1_50=((c./(fr_c_50.*1e12))/1e-9);

%Representación de los datos 
FRECUENCIA_50 = [fr_c_50];
LONGITUD = [lambda_1_50];
T_3=table(FRECUENCIA_50,LONGITUD)

%% 
can = length(n_1_50);
fprintf('Número de canales para 50GHz es %d',can);
    case 4
 %% Para la frecuencia de 100GHz
n_1_100=28:-1:-15;
fr_c_100=(193.1+(n_1_100*0.1))';
lambda_1_100=((c./(fr_c_100.*1e12))/1e-9);

%Representación de los datos 
FRECUENCIA_100 = [fr_c_100];
LAMBDA = [lambda_1_100];
T_4=table(FRECUENCIA_100,LAMBDA)
%%
can = length(n_1_100);
fprintf('Número de canales para 100GHz es %d',can);
    
    case 5
%% Para la frecuencia de 200GHz
n_1_200=14:-1:-7;
fr_c_200=(193.1+(n_1_200*0.2))';
lambda_1_200=((c./(fr_c_200.*1e12))/1e-9);

%Representación de los datos 
FRECUENCIA_200 = [fr_c_200];
LAMBDA = [lambda_1_200];
T_4=table(FRECUENCIA_200,LAMBDA)

%%
can = length(n_1_200);
fprintf('Número de canales para 200GHz es %d',can);
    otherwise
end


 
 
 
 
 
 
 
 
