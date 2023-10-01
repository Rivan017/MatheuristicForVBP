#read C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\VWmodel.zpl
#write solution C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\out.txt
#set limits nodes 1
#optimize

#Vertici

set V :={read "nodes.txt" as "<1s>"};
#Archi
set A :={read "arcs.txt" as "<1s,2s>"};
#Dimensione di B
param N := read "N.txt" as "1n";
param sizeB := floor(N / 2);

#Variabile di assegnamento a B
var x[V] binary;
#Variabile di collegamento con almeno un vertice di B'
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