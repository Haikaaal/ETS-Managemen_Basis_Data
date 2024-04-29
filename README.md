# ETS-Managemen_Basis_Data

## Studi Kasus: UMKM
• HMTC akan melakukan kegiatan sosial masyarakat bernama "Bantu UMKM". Kegiatan ini membantu UMKM mendapatkan sertifikasi produk, misalnya sertifikasi halal. HMTC akan memonitor aktivitas mahasiswa yang membantu UMKM (mengecek produk, membuatkan logo, membuat banner, membuatkan daftar menu, dan membuat dokumen pengajuan sertifikasi) dan memberikan insentif berdasar performanya.

• Seorang mahasiswa akan diplotting untuk membantu UMKM sampai mengajukan sertifikasi ke lembaga tertentu(misal: untuk sertifikasi halal diajukan ke BPJPH).

• Seorang mahasiswa hanya akan diplotting ke satu UMKM, begitu pula sebaliknya. Status UMKM adalah 0 dan 1, 0 untuk belum bersertifikat, 1 untuk sudah. 

• Diperlukan database untuk mengelola data-data pendampingan, yaitu data mahasiswa yang bertugas, data UMKM, data aktivitas mahasiswa, data koordinator, dan data Pengajuan sertifikasi. 

• Tabel Pengajuan Sertifikasi harus menyimpan tanggal pengajuan, nama sertifikasi, dan status pengajuannya(mendaftar, Diterima, Ditolak). 

• Aktivitas mahasiswa dicatat di tabel aktivitas mahasiswa. Tabel ini berisi tanggal, nama aktivitas, dan verifikasi. Verifikasi dilakukan oleh koordinator, yaitu dengan menandai “ACC” jika menyetujui aktivitas mahasiswa atau “NO” jika menolak ajuan aktivitas.

## Soal
1. Buatlah view yang menampilkan mahasiswa dan UMKM yang dibantunya.
2. Buatlah view yang menampilkan nama mahasiswa dan jumlah UMKM yang pengajuan sertifikasinya “mendaftar”, “Diterima”, dan “Ditolak”.
3. Buatlah sebuah tabel baru bernama Log Verifikasi. Tabel ini perlu menyimpan data ID log, ID Aktivitas, status verifikasi lama, status verifikasi baru, ID koordinator, dan timestamp. Buatlah sequence untuk membuat autoincrement pada ID log.
4. Terapkan trigger pada tabel baru (soal no 3) yang akan menyimpan log perubahan kolom status verifikasi pada tabel Aktivitas Mahasiswa.
5. Buatlah INSTEAD OF trigger untuk menambahkan data melalui view pada soal no. 1.
6. Buatlah procedure yang mengganti semua value "Menunggu" menjadi "Ditolak" pada kolom status di tabel
Pengajuan Sertifikasi bila sudah lebih dari 6 bulan semenjak sertifikasi diajukan.
7. Buat fungsi perhitungan Insentif mahasiswa dimana insentif sebesar Rp50.000 diberikan per aktivitas yang sudahdiverifikasi. Gunakan fungsi tersebut pada query untuk menampilkan daftar mahasiswa dan jumlah insentifnya.
8. Tunjukkan kemampuan terbaik Anda dalam menyelesaikan satu problem, berdasar studi kasus ataupengembangannya, yang dapat diselesaikan dengan menggunakan trigger, function, procedure, ataukombinasinya.
