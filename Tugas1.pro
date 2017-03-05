predicates 
 nondeterm ikhwan(String,long,symbol,integer,symbol)
 nondeterm akhwat(String,long,symbol,integer,symbol)
 nondeterm gender(String,long,symbol,integer,symbol)

clauses
 ikhwan(aimam,1515015001,d2015,18,smbd).
 ikhwan(budi,1515015002,a2015,19,kecerdasan_buatan).
 ikhwan(arif,1515015003,c2015,20,framework).

 akhwat(iffah,1515015004,c2015,21,struktur_data).
 akhwat(afi,1515015005,e2015,20,algoritma_pemprograman).
 akhwat(dila,1515015006,b2015,17,pemprograman_visual).

	gender(Nama,Nim,Kelas,Umur,Mk):-
	ikhwan(Nama,Nim,Kelas,Umur,Mk);
	akhwat(Nama,Nim,Kelas,Umur,Mk).
goal
	akhwat(Nama,Nim,Kelas,Umur,pemprograman_visual);
	ikhwan(Nama,1515015003,Kelas,Umur,Mk).