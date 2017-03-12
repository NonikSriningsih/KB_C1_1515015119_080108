/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  likes(symbol,symbol) - nondeterm (i,o)
  tastes(symbol,symbol) - nondeterm (i,i)
  food(symbol) - nondeterm (o)

clauses
%pada klausa ini terdapat alur dimana bill menyukai sesuatu dengan variable X, dimana variable  harus lah makanan yang mempunyai rasa yang sedap
  likes(bill,X):-
	food(X),
	tastes(X,good).
	
% ternyata dari klausa dibawah ini makanan yang rasanya enak adalah pizza
  tastes(pizza,good).
  tastes(brussels_sprouts,bad).

  food(brussels_sprouts).
  food(pizza).

goal
  likes(bill,What). %di dalam goal yang dicari ialah apa yang disukai bill dengan syarat yang sudah di tentukan didalam klausa
  %lalu yang muncul pada goal adalah pizza karena pizza rasanya sedap
	