ReadME for Problem 2
---------------------
The ** problem_2.pl ** is to be loaded in SWI-Prolog application.
---------------------
2 (a)
sublist/2
The code returns true or false based on the inputs.
#Usage:
?=sublist(list1,list2).
list1 and list2 are two user defined input lists. The code checks if elements of list1 are present in list2 in the same order with other elements in between or else return false.
#Assumption:
[] (empty list) is a sublist of every list.
#Eg:
?=sublist([a,b,c],[a,x,y,b,z,a,c,g]).
Output: true
---------------------
2 (b)
has_triplicate/1
The code prints the answer and returns true or false based on the input.
#Usage:
?=has_triplicate(list1).
list1 is a user defined input list. The code checks if any element of list1 is present >=3 times in the given list and prints if it present.
Using ; after answer will give more alternate results if any.
Assumption:
Repetition of output is allowed.
#Eg:
?=has_triplicate([a,b,a,c,a,b,c,c,b,b,c]).
Output:a true;b true;c true;b true;c true.
---------------------
2 (c)
remove/3
The code removes the Nth element from the input list and gives a new list as output.
#Usage:
?=remove(N,list1,Output).
list1 is a user defined input list. The code removes the Nth element from the list1 if possible and returns the new list as Output.
Assumption:
N>0 and N is integer.
#Eg:
?=remove(2,[a,b,c,d],Y).
Output:Y=[a,c,d]
---------------------
2 (d)
remove_every_other/2
The code removes every other element of list1 and returns the left over list as Output.
#Usage:
?=remove_every_other(List1,Output).
List1 is a user defined input list. The code removes every second element or to say elements at even index considering that list starts add index 1 and returns the new list.
Assumption:
Both input and output lists start with the same first element. 
#Eg:
?=remove_every_other([2,4,a,b,c],Y).
Output: Y=[2,a,c]
---------------------