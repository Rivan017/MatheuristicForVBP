#read C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\VWmodelV2.zpl
#set limits nodes 1
#optimize
#write solution C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\out.txt

#Vertici
param N := read "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\input.txt" as "1n" skip 1 use 1;
set V := { 1 .. N };
#Archi
set A :={read "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\input.txt" as "<1n,2n>" skip 2};
#Dimensione di B
param sizeB := floor(N / 2);

#Variabile di assegnamento a B
var x[V] binary;
#Variabile di collegamento con almeno un vertice di B' -- z[v]=1 sse v e' nodo di frontiera
var z[V] binary;

#Minimizza Vertex Width
minimize VW: sum<v> in V: z[v];

#Vincoli di definizione di z
subto sigmaOut:
	forall <v1,v2> in A:
		x[v1] - x[v2] <= z[v1];
subto sigmaOutSimmetrico:
	forall <v1,v2> in A:
		x[v2] - x[v1] <= z[v2];
		
#Grandezza B = floor(N/2)
subto sizeOfB:
	sum<v> in V: x[v] == sizeB;