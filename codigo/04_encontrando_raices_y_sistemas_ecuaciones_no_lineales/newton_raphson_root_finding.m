% Newton-Raphson method for root finding
%
% WHO   DATE            WHAT
% DAA   Apr 5, 2010    First algorithm
%
% DAA - Diego Andr�s Alvarez Mar�n - diegoandresalvarez@gmx.net

f      = @(x) x^2 - 2;
fprima = @(x) 2*x;

x = 1;  % initial value of x
k = 0;  % iteration counter
while true
   xprev = x;
   x = x - f(x)/fprima(x);
   k = k + 1;
   if abs(x - xprev) < eps*abs(x)
      break
   end
end
format long
x
sqrt(2)
k

% TAREAS:
% 1. Alerte si f(x)  = 0
% 2. Alerte si f'(x) = 0
% 3. Incluya un l�mite superior en el n�mero de iteraciones para evitar
% oscilaciones, convergencia lenta y soluciones divergentes
% 4. Implementar el m�todo de la secante
% 5. Intente encontrar la ra�z de la funci�n
%  f(x) = sign(x-2)*sqrt(abs(x-2))
% sabiendo que esta existe entre 0 y 4. H�galo con el m�todo de la
% bisecci�n, la secante y con Newton-Raphson. �Qu� deduce?