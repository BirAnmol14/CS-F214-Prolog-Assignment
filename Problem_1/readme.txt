ReadMe for Problem 1
--------------------
The ** Problem_1.pl ** is to be loaded in SWI-Prolog application.
---------------------
findPath/4
The code returns different paths and their lengths based on the 2 input vertices. 
#Usage:
?=findPath(v1,v2,Path,L).
v1 and v2 are two vertices of the three test graphs mentioned in ** KnowledgeBaseUsed.txt ** file. The code checks if there is a/are path/s between the two given vertices and return it along with its length or false otherwise.
Use ; after each result to find an alternate path.
#Assumption:
weight(x,y,2) => there is an edge between x and y and y and x both ways.
Path according to graph theory is a walk with no vertice repeated.
Taking this into account the code does not enter loops and assumes that the start and end vertex will be always different.
#Eg:
?=findPath(x,y,Path,L).
Output: 
Path = [x, y],
L = 2 ;
Path = [x, w, z, y],
L = 12 ;
false.
-------------------
Graph 1 has vertices:
p,q,r,s.

Graph 2 has vertices:
a,b,c,d,e

Graph 3 has vertices:
x,y,z,w
-------------------
Pictorial representation of the graphs is also present in the Problem_1 folder.
-------------------
