 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) /*dalam predicates ini jenis tipe datanya adalah unsigned dan real 
  dimana hasil dari predicates yang ada tidak boleh bernilai nol ataupun minus*/
  
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i)

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- /*pada aturan ini terdapat dua variabel nilai yaitu N dan FactN, dimana nilai yang ada dibawah ini adalah ketetapan awal (bernilai 1 karena sudah ditentukan nilai tidak boleh samadengan atau kurangdari 0,
yang nilai nya akan berubah setelah terjadi looping sekian kali sampai nilai dari N memenuhi nilai yang ada di goal*/
	factorial(N,FactN,1,1.0).

  factorial(N,FactN,N,FactN):-!. /*pada aturan ini ditetapkan ada 2 variable nilai yaitu N dan FactN, dimana N yang ditetapkan pada aturan diattas awalnya bernilai 1 
  yang akan berubah nilainya sesuai perhitungan (looping) dan perhitungan (looping) ini akan terjadi sampai angka yang ditetapkan di goal sesuai.
  , system akan berhenti menjalankan program (cut) ketika syarat dimana N yang bernilai 1 memenuhi nilai N = 3 sesuai dengan yang terdapat di dalam goal */
  
  factorial(N,FactN,I,P):- /*untuk memenuhi nilai N samadengan 3, maka dilakukan perhitungan sebagai berikut : */
  
	NewI = I+1, /*Nilai dari NewI merupakan nilai I yang sudah ditetapkan bernilai 1 diawal sebagai awal dari perhitungan sampai mencapai angka sesuai dengan goal*/
/*Nilai dari NewI akan terus bertambah sampai nilai dari NewI ini sesuai dengan Nilai yang telah ditetapkan di Goal yaitu 3*/

	NewP = P*NewI, /*Nilai dari NewP merupakan nilai P yang sudah ditetapkan bernilai 1 diawal*/
/* Begitu juga dengan Nilai dari NewP akan terus di kalkulasi sesuai dengan banyak nya perhitungan yang dilakukan di NewI sampai memenuhi nilai 3, dan saat
NewI bernilai 3 maka NweP akan bernilai 6 sesuai dengan hasil yang ada di goal saat di running*/

	factorial(N, FactN, NewI, NewP). /**/
	
	/*PENJABARAN*/
	
	
/*NewI = 1 + 1 = 2  -> karena nilai nya belum memenuhi maka dilakukan looping lagi untuk perhitungannya
NewP = 1 * 2 = 2

NewI = 2 + 1 = 3
NewP = 3 * 2 = 6  -> nilai dari N sudah terpenuhi sesuai dengan yang ada di goal yaitu 3*/

/*kembali dari aturan yang diawal factorial(N,FactN) dimana FactN merupakan nilai dari NewP
jadi hasil yang keluar di outputnya sama dengan 6 sesuai dengan hasil dari NewP*/

goal
  factorial(3,X). /*didalam goal, yang dicari adalah factorial dari nilai N, 
  dimana Nilai N disini adalah 3 dan nilai factorialnya di lambangkan dengan variabel X*/
  /*dari perhitungan diatas maka diperoleh nilai X/FactN/NewP samadengan 6*/
