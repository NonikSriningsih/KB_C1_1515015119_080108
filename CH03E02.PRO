/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  brand,color = symbol
  age = byte
  price, mileage = ulong
  %domain ini digunakan jika predikat yang digunakan tidak sesuai dengan domain standar seperti symbol,integer,byte,dsb.
  %domain disini menjelaskan jika brand dan color termasuk tipe simbol
  %dan age masuk didalam domain standar byte dan price serta milieage masuk didalam domain standar ulong

predicates
  car(brand,mileage,age,color,price) - nondeterm (i,i,i,i,i)
  %disini berarti hasil dari goal nya berupa jawaban dari pertanyaan yang ada di goal sehingga nondeterm nya berupa inputan

clauses
  car(chrysler,130000,3,red,12000).
  car(ford,90000,4,gray,25000).
  car(datsun,8000,1,black,30000).

goal
  car(renault,130000,4,red,12000).
  %goal disini menanyakan apakah car(renault,13,40000,red,12000) ada di dalam klausa dari program,maka hasilnya "no".
	  