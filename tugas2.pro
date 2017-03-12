predicates
  %run - nondeterm ()
  nondeterm bio(symbol,symbol,ulong,symbol)
  nondeterm kakak(symbol,symbol)
clauses

	bio("Nonik Sriningsih","FKTI",08011996,"21 tahun").
	bio("Hijratul Aini","FKTI",08101997,"19 tahun").
	bio("Asrianto","FKIP",25011997,"20 tahun").
	bio("Aulia Putri","Fak Kehutanan",07011997,"21 tahun").
	
	kakak("Nonik Sriningsih","Asrianto").
 	kakak("Asrianto","Hijratul Aini").
  	kakak("Hijratul","Aulia Putri").
  	kakak("Aulia Putri","Asrianto").

 /* run:-
	write("************************************"),nl,
	write("Ingin Keluar dari Program??"),nl,
	exit.*/
	
goal
	write("Nyoba Prolog Postest2"),nl,nl,
	bio(Nama,Fakultas,Tanggal_lahir,Umur),nl;
	kakak(Siapa,"Asrianto"),nl.