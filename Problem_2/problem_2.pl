/*2 (a)
Test Case 1:
sublist([a,b,c],[x,y,z,a,b,c,f]).

Test Case 2:
sublist([a,b,c],[x,y,z,c,a,b,f]).

Test Case 3:
sublist([[a]],[a,b,c,[a,b],[a]]).

Test Case 4:
sublist([a,b,c],[a,x,y,b,z,a,c,g]).
*/
sublist([],L).
sublist([H|T1],[H|T2]):-sublist(T1,T2).
sublist([X|T1],[Y|T2]):-X\==Y,sublist([H|T1],T2).
/*End of 2(a)*/

/*2(b)
Test Case 1:
 has_triplicate([[a],[a],[a],a,a,a,a,a]).

Test Case 2:
 has_triplicate([a,b,c,b,b,c,d,e]).

Test Case 3:
has_triplicate([a,b,a,c,a,b,c,c,b,b,c]).
*/
search(X,[],C):- C>=3,print(X).
search(X,[X|T],C):- C1 is C+1,search(X,T,C1).
search(X,[H|T],C):-H\==X,search(X,T,C).

has_triplicate([H|T]):-search(H,T,1);has_triplicate(T).
/*End of 2(b)*/

/* 2(c)
Test Case 1:
remove(2,[a,b,c,d],Y).

Test Case 2:
remove(10,[a,b,c,d],Y).

Test case 3:
remove(1,[[a,b,c],[x,y,z],d,e,f],Y).
*/
append([],L,L).
append([H|L1],L2,[H|L3]):-append(L1,L2,L3).
len([],0).
len([H|T],L):-len(T,L1),L is L1+1.

myDel(N,[_|T],Y,L):-N=:=1,append(L,T,Y).
myDel(N,[H|T],Y,L):-append(L,[H],NewL),N1 is N-1,myDel(N1,T,Y,NewL).
remove(N,[_|T],T):-N=:=1.
remove(N,[H|T],Y):-len([H|T],L1),N=<L1,N1 is N-1,myDel(N1,T,Y,[H]).
/*End of 2(c)*/

/* 2(d)
Test Case 1:
remove_every_other([a,b,c,d,e],Y).

Test Case 2:
remove_every_other([1,2,3,4,5,6,7,8],Y).

Test Case 3:
remove_every_other([],Y).

Test Case 4:
remove_every_other([2,4,a,b,c],Y).
*/
mod(A,B,A):-A>=0,A<B.
mod(A,B,C):-D is A-B,D>=0,mod(D,B,C).
del([],Y,C,L):-Y=L.
del([H|T],Y,C,L):-mod(C,2,R),R=:=1,append(L,[H],L1),C1 is C+1,del(T,Y,C1,L1).
del([_|T],Y,C,L):-mod(C,2,R),R=:=0,C1 is C+1,del(T,Y,C1,L).
remove_every_other(X,Y):-del(X,Y,1,[]).
/*End of 2(d)*/