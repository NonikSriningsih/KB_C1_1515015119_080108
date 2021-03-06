domains
matakuliah,prodi,jenis,nama,dosen=symbol
ruang,nim=integer
alamat = alamat1(jalan,nomor,kota_kab,propinsi)
kota_kab,propinsi,jalan= symbol
nomor = string

predicates

nondeterm ajar(matakuliah,nama,prodi,ruang)
nondeterm ambil(nama,jenis,nim,alamat,matakuliah)
nondeterm jadwal(matakuliah,nama,dosen,ruang)

clauses

ajar("Intelejensi Buatan","Abdul Kadir","Manajemen Informatika",1).
ajar("PDE","Indra Yatini","Teknik Informatika",2).
ajar("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer",3).

ambil("Sugeng Riyadi","Laki - Laki",2002001,alamat1("Jl. Sudirman", "No. 2","Pontianak", "Kalimantan Barat"),"Intelejensi Buatan").
ambil("Yulia Sugondo","Perempuan",2002002,alamat1("Jl. A. Yani", "No. 10","Klaten", "Jawa Tengah"),"Intelejensi Buatan").
ambil("Budiman Sejati","Laki - Laki",2002003,alamat1("Jl. Slamet Riyadi", "No. 45","Solo", "Jawa Tengah"),"Intelejensi Buatan").

ambil("Laksamana Sukardi","Laki - Laki",2002004,alamat1("Jl. MT Haryono", "No. 10","Palembang", "Sumatera Selatan"),"PDE").
ambil("Rini Suwandi","Perempuan",2002005,alamat1("Jl. Letjen Suprapto", "No. 12","Surabaya", "Jawa Timur"),"PDE").
ambil("Kwik Kian Gie","Laki - Laki",2002006,alamat1("Jl. WR Supratman", "No. 100","Makassar", "Sulawesi Selatan"),"PDE").

ambil("Riri Reza","Laki - Laki",2002007,alamat1("Jl. RW Monginsidi", "No. 30","Purwokerto", "Jawa Tengah"),"Teknik Antar Muka").
ambil("Rachel Maryam","Perempuan",2002008,alamat1("Jl. Otista", "No. 112","Bandung", "Jawa Barat"),"Teknik Antar Muka").
ambil("Garin Nugroho","Laki - Laki",2002009,alamat1("Jl. Tanjung Pura", "No. 101","Jaya Pura", "Papua"),"Teknik Antar Muka").

jadwal("Intelejensi Buatan","Sugeng Riyadi","Abdul Kadir",1).
jadwal("Intelejensi Buatan","Yulia Sugondo","Abdul Kadir",1).
jadwal("Intelejensi Buatan","Budiman Sejati","Abdul Kadir",1).

jadwal("PDE","Laksamana Sukardi","Indra Yatini" ,2).
jadwal("PDE","Rini Suwandi","Indra Yatini" ,2).
jadwal("PDE","Kwik Kian Gie", "Indra Yatini" ,2).

jadwal("Teknik Antar Muka","Riri Reza", "Sigit Anggoro",3).
jadwal("Teknik Antar Muka","Rachel Maryam" , "Sigit Anggoro" ,3).
jadwal("Teknik Antar Muka","Garin Nugroho","Sigit Anggoro",3).

goal

%jawaban nomor 1
ambil(Nama_Mahasiswa,_,_,Alamat,"Intelejensi Buatan"),nl,
ajar("Intelejensi Buatan",Nama_Dosen,_,Ruangan),nl.

%jawaban nomor 2
%ajar(Matakuliah_YangDiajarkan,_,_,Ruangan),nl,
%jadwal("Intelejensi Buatan",Nama_Mahasiswa,Dosen,Ruangan),nl;
%ajar(Matakuliah_YangDiajarkan,_,_,Ruangan),nl,
%jadwal("PDE",Nama_Mahasiswa,Dosen,Ruangan),nl;
%ajar(Matakuliah_YangDiajarkan,_,_,Ruangan),nl,
%jadwal("Teknik Antar Muka",Nama_Mahasiswa,Dosen,Ruangan),nl.
