predicates 
 nondeterm ikhwan(String,long,symbol,integer,symbol)
 nondeterm akhwat(String,long,symbol,integer,symbol)
 nondeterm apa(String,long,symbol,integer,symbol)

clauses
 ikhwan(aimam,1515015001,d2015,18,smbd).
 ikhwan(budi,1515015002,a2015,19,kb).
 ikhwan(arif,1515015003,c2015,20,framework).

 akhwat(iffah,1515015004,c2015,21,sd).
 akhwat(afi,1515015005,e2015,20,pf).
 akhwat(dila,1515015006,b2015,19,vp).

	apa(Nama,Nim,Kelas,Umur,Mk):-
	ikhwan(Nama,Nim,Kelas,Umur,Mk);
	akhwat(Nama,Nim,Kelas,Umur,Mk).
goal
	ikhwan(Nama,Nim,Kelas,Umur,smbd).