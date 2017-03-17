domains
nama,matakuliah,nilai_huruf=symbol

predicates
nondeterm mengambil(nama,matakuliah)
nondeterm nilai(nama,nilai_huruf)

clauses
mengambil("Irfan","AI").
mengambil("Komeng","AI").
mengambil("Dati","AI").
mengambil("Fatima","AI").
mengambil("Maspion","AI").
mengambil("Ricky","PDE").
mengambil("Embang","PDE").
mengambil("Salmin","PDE").
mengambil("Vina","PDE").
mengambil("Sondang","PDE").
mengambil("Pamuji","SO").
mengambil("Luki","SO").
mengambil("Sadek","SO").
mengambil("Yasida","SO").
mengambil("Eka","SO").

nilai("Irfan","A").
nilai("Komeng","D").
nilai("Dati","C").
nilai("Fatima","B").
nilai("Maspion","C").
nilai("Ricky","E").
nilai("Embang","A").
nilai("Salmin","D").
nilai("Vina","B").
nilai("Sondang","C").
nilai("Pamuji","D").
nilai("Luki","E").
nilai("Sadek","B").
nilai("Yasida","A").
nilai("Eka","A").

goal
%nilai(Mahasiswa_yang_nilainya_A,"A"),nl;
%nilai(Mahasiswa_yang_nilainya_B,"B"),nl;
%nilai(Mahasiswa_yang_nilainya_C,"C"),nl;
nilai(Mahasiswa_Yang_tidak_Lulus,Nilai_huruf),Nilai_huruf >="D" ,nl;
nilai(Mahasiswa_yang_Lulus,Nilai_huruf), Nilai_huruf <= "C",nl;
mengambil(Yang_mengambil_AI,"AI"),nl;
mengambil(_,Matakuliah);
mengambil(NamaMahasiawa,_),nl.
