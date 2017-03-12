/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  title,author = symbol
  pages        = unsigned

predicates
  book(title,pages) - nondeterm (i,o)	%pada predikat buku terdapat judul dan jumlah halaman , pada pages itu berupa pertanyaan karena itu yang dicari di goal nya
  written_by(author,title) - nondeterm (o,o) %pada predikat ditulis oleh ini berisi penulis dan judul buku
  long_novel(title) - nondeterm (o) %pada predikat long_novel berupa pertanyaan yang terdapat didalam goal

clauses
  written_by(fleming,"DR NO").
  written_by(melville,"MOBY DICK").

  book("MOBY DICK",250).
  book("DR NO",310).

  long_novel(Title):-			%pada klausa ini long_novel itu berisi title jika maka
	written_by(_,Title),		%untuk penulis di abaikan authornya dan tetap memunculkan title nya
	book(Title,Length),		% pada predikat book ini yang di cari adalah title dan panjang buku 
	Length > 300.			% dengan syarat panjang atau banyak halamannya adalah 300 halaman

goal %di goal nya yang dicari sesuai dengan clause nya adalah yang halamannya lebih dari 300, oleh karena itu yang muncul adalah hasil buku DR NO
  long_novel(X).
