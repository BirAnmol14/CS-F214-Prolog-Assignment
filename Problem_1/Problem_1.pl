/*Test Case 1- finding path between p and s.*/
weight(p,q,1).
weight(q,r,2).
weight(r,p,3).
weight(p,s,5).
weight(s,r,3).
weight(s,q,1).

/*Test Case 2- finding path between a and e.*/
weight(a,b,1).
weight(b,c,1).
weight(c,d,1).
weight(d,a,1).
weight(c,a,1).
weight(b,e,1).
weight(e,c,1).
weight(e,d,1).

/*Test Case 3- finding path between x and w.*/
weight(x,y,2).
weight(y,z,3).
weight(z,w,4).
weight(w,x,5).

append([],L,L).
append([H|L1],L2,[H|L3]):-append(L1,L2,L3).

hasEdge(X,Y,L):-weight(X,Y,L);weight(Y,X,L).

notMember(A,[]).
notMember(A,[B|T]):-A\==B,notMember(A,T).

walk(A,B,Distance,VertexPresent,Path):-A\==B,hasEdge(A,B,Distance),append(VertexPresent,[B],Path).
walk(A,B,Distance,VertexPresent,Path):-hasEdge(A,C,L1),C\==A,C\==B,notMember(C,VertexPresent),notMember(B,VertexPresent),append(VertexPresent,[C],NewVertexPresent),walk(C,B,L2,NewVertexPresent,Path),Distance is L1+L2.

findPath(X,Y,Path,L):-walk(X,Y,L,[X],Path).