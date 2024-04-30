CREATE TABLE Mahasiswa (
    mhs_id INT AUTO_INCREMENT,
    nama VARCHAR(100),
    PRIMARY KEY (mhs_id)
);

CREATE TABLE Koordinator (
    koor_id INT AUTO_INCREMENT,
    nama VARCHAR(100),
    PRIMARY KEY (koor_id)
);

CREATE TABLE UMKM (
    umkm_id INT AUTO_INCREMENT,
    mhs_id INT,
    nama VARCHAR(100),
    status_ver TINYINT(1) DEFAULT 0,
    PRIMARY KEY (umkm_id),
    FOREIGN KEY (mhs_id) REFERENCES Mahasiswa(mhs_id)
);

CREATE TABLE Aktivitas_Mhs (
    act_id INT AUTO_INCREMENT,
    mhs_id INT,
    koor_id INT,
    aktivitas VARCHAR(100),
    tanggal_aktivitas DATE,
    status_check ENUM('ACC', 'NO'),
    PRIMARY KEY (act_id),
    FOREIGN KEY (koor_id) REFERENCES Koordinator(koor_id),
    FOREIGN KEY (mhs_id) REFERENCES Mahasiswa(mhs_id)
);

CREATE TABLE Pengajuan_Sertifikasi(
    pengajuan_id INT AUTO_INCREMENT,
    mhs_id INT,
    tanggal_pengajuan DATE,
    nama_sertifikasi VARCHAR(100),
    status ENUM('mendaftar', 'diterima', 'ditolak'),
    PRIMARY KEY (pengajuan_id),
    FOREIGN KEY (mhs_id) REFERENCES Mahasiswa(mhs_id)
);

INSERT INTO Mahasiswa (nama) VALUES
('Mina'), 
('Budi'),  
('Andi'), 
('Nunu'), 
('Cika'),
('Sam'), 
('Momo'), 
('Hendra'), 
('Denny'), 
('Joko');

INSERT INTO UMKM (nama, status_ver, mhs_id) VALUES
('Sego Ndog', 1, 1), 
('Njamoer', 0, 2), 
('Tahu Tek Pak Ca', 1, 3), 
('Nasi Goreng Tiki', 1, 4),
('Dapur Kita', 0, 5), 
('Ketoprak Sakinah', 0, 6), 
('Sego Sambel Kappa', 0, 7),
('Nasi Goreng Pak Duku', 0, 8), 
('Mie Ghodog Genteng', 1, 9), 
('Soto Ayam Cak Kan', 0, 10);

INSERT INTO Koordinator (nama) VALUES
('Lana'), 
('Terra'), 
('Max'), 
('Link'), 
('Cnine'),
('Mumu'), 
('Nesta'), 
('Herry'), 
('Tina'), 
('Umar');

INSERT INTO Aktivitas_Mhs (mhs_id, koor_id, aktivitas, tanggal_aktivitas, status_check) VALUES
(1, 1, 'Design Logo', '2023-05-20', 'ACC'),
(1, 1, 'Mengajukan Sertifikat', '2023-05-31', 'ACC'),
(2, 3, 'Membuat Banner', '2023-05-31', 'ACC'),
(2, 3, 'Mengajukan Sertifikat', '2023-06-02', 'ACC'),
(3, 2, 'Market Research', '2023-06-21', 'NO'),
(3, 2, 'Market Research Revised', '2023-07-01', 'ACC'),
(3, 2, 'Mengajukan Sertifikat', '2023-07-01', 'ACC'), 
(3, 2, 'Mengajukan Sertifikat', '2023-07-14', 'ACC'),
(4, 5, 'Product Testing', '2023-07-22', 'ACC'),
(4, 5, 'Mengajukan Sertifikat', '2023-10-04', 'ACC'), 
(6, 4, 'Banner Design', '2023-08-23', 'ACC'),
(6, 4, 'Mengajukan Sertifikat', '2023-08-27', 'ACC'),
(7, 6, 'Documentation', '2023-09-24', 'NO'),
(7, 6, 'Documentation Revised', '2023-10-03', 'ACC'),
(7, 6, 'Mengajukan Sertifikat', '2023-11-05', 'ACC'), 
(7, 6, 'Mengajukan Sertifikat', '2023-12-06', 'ACC'), 
(4, 5, 'Social Media Promotion', '2023-10-25', 'ACC'),
(3, 2, 'Customer Survey', '2023-11-26', 'ACC'),
(3, 2, 'Mengajukan Sertifikat', '2024-01-07', 'ACC'),
(4, 5, 'Website Update', '2023-12-27', 'ACC'),
(9, 9, 'Product Photography', '2024-01-28', 'NO'),
(9, 9, 'Product Photography Revised', '2024-02-06', 'ACC'),
(9, 9, 'Mengajukan Sertifikat', '2024-01-28', 'ACC'),  
(9, 9, 'Mengajukan Sertifikat', '2024-02-19', 'ACC'), 
(10, 10, 'Brand Strategy', '2024-02-29', 'ACC'),
(10, 10, 'Mengajukan Sertifikat', '2024-02-28', 'ACC'); 


INSERT INTO Pengajuan_Sertifikasi (mhs_id, tanggal_pengajuan, nama_sertifikasi, status) VALUES
(1, '2023-05-31', 'Sertifikasi Halal', 'mendaftar'),
(1, '2023-06-01', 'Sertifikasi Halal', 'diterima'),
(2, '2023-06-02', 'Sertifikasi Halal', 'mendaftar'),
(3, '2023-07-01', 'Sertifikasi Halal', 'mendaftar'),
(3, '2023-07-02', 'Sertifikasi Halal', 'ditolak'),
(3, '2023-07-14', 'Sertifikasi Halal', 'mendaftar'),
(3, '2023-07-15', 'Sertifikasi Halal', 'diterima'),
(4, '2023-10-04', 'Sertifikasi Halal', 'mendaftar'),
(4, '2023-10-05', 'Sertifikasi Halal', 'diterima'),
(6, '2023-08-27', 'Sertifikasi Halal', 'mendaftar'),
(6, '2023-09-04', 'Sertifikasi Halal', 'mendaftar'),
(7, '2023-11-05', 'Sertifikasi Halal', 'mendaftar'),
(7, '2023-11-06', 'Sertifikasi Halal', 'ditolak'),
(7, '2023-12-06', 'Sertifikasi Halal', 'mendaftar'),
(7, '2023-12-07', 'Sertifikasi Halal', 'mendaftar'),
(9, '2024-01-28', 'Sertifikasi Halal', 'mendaftar'),
(9, '2024-01-29', 'Sertifikasi Halal', 'ditolak'),
(9, '2024-02-19', 'Sertifikasi Halal', 'mendaftar'),
(9, '2024-02-20', 'Sertifikasi Halal', 'diterima'),
(10, '2024-02-28', 'Sertifikasi Halal', 'mendaftar'),
(10, '2024-03-10', 'Sertifikasi Halal', 'mendaftar');

--1
CREATE VIEW View_Mahasiswa_UMKM AS
SELECT 
    u.umkm_id, 
    u.nama AS Nama_UMKM,
    m.nama AS Nama_Mahasiswa
FROM 
    Mahasiswa m
JOIN 
    UMKM u ON m.mhs_id = u.mhs_id;

--2
CREATE VIEW View_Status_Pengajuan AS
SELECT 
    m.nama AS Nama_Mahasiswa,
    SUM(CASE WHEN p.status = 'mendaftar' THEN 1 ELSE 0 END) AS Jumlah_Mendaftar,
    SUM(CASE WHEN p.status = 'diterima' THEN 1 ELSE 0 END) AS Jumlah_Diterima,
    SUM(CASE WHEN p.status = 'ditolak' THEN 1 ELSE 0 END) AS Jumlah_Ditolak
FROM 
    Mahasiswa m
LEFT JOIN 
    Pengajuan_Sertifikasi p ON m.mhs_id = p.mhs_id
GROUP BY 
    m.mhs_id, m.nama;

--3
CREATE TABLE Log_Verifikasi (
    log_id INT,
    act_id INT,
    koor_id INT,
    status_verifikasi_lama ENUM('ACC', 'NO'),
    status_verifikasi_baru ENUM('ACC', 'NO'),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (log_id),
    FOREIGN KEY (act_id) REFERENCES Aktivitas_Mhs(act_id),
    FOREIGN KEY (koor_id) REFERENCES Koordinator(koor_id)
);

CREATE SEQUENCE log_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9999
    CACHE 20;
--4
DELIMITER $$
CREATE TRIGGER after_status_update
AFTER UPDATE ON Aktivitas_Mhs
FOR EACH ROW
BEGIN
    IF NEW.status_check <> OLD.status_check THEN
        INSERT INTO Log_Verifikasi (log_id, act_id, status_verifikasi_lama, status_verifikasi_baru, koor_id, timestamp)
        VALUES (NEXT VALUE FOR log_seq, NEW.act_id, OLD.status_check, NEW.status_check, NEW.koor_id, NOW());
    END IF;
END$$
DELIMITER ;
--Tes Jalan atau tidak Triggernya
UPDATE Aktivitas_Mhs
SET status_check = 'NO'
WHERE act_id = 1 AND status_check = 'ACC';
 
--Cek Sequence jalan atau tidak
UPDATE Aktivitas_Mhs
SET status_check = 'NO'
WHERE act_id = 2 AND status_check = 'ACC';

--5
DELIMITER $$
CREATE PROCEDURE insert_mhs_umkm(IN nama_mhs VARCHAR(100), IN nama_umkm VARCHAR(100))
BEGIN
    DECLARE new_mhs_id INT;
    INSERT INTO Mahasiswa (nama) VALUES (nama_mhs);
    SET new_mhs_id = LAST_INSERT_ID(); 
    INSERT INTO UMKM (nama, mhs_id) VALUES (nama_umkm, new_mhs_id);
END$$
DELIMITER ;

--Coba Insert data buat cek trigger
CALL insert_mhs_umkm('IlIn', 'Tes123');

--6
DELIMITER $$
CREATE PROCEDURE mendaftar_ditolak_sertifikasi()
BEGIN
    UPDATE Pengajuan_Sertifikasi
    SET status = 'ditolak'
    WHERE status = 'mendaftar' AND tanggal_pengajuan <= CURDATE() - INTERVAL 6 MONTH;
END$$
DELIMITER ;
CALL mendaftar_ditolak_sertifikasi();   

--7
DELIMITER $$
CREATE FUNCTION hasik_insentive(_mhs_id INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total_incentive DECIMAL(10,2);
    SELECT COUNT(*) * 50000 INTO total_incentive
    FROM Aktivitas_Mhs
    WHERE mhs_id = _mhs_id AND status_check = 'ACC';
    RETURN total_incentive;
END$$

DELIMITER ;

--Cek Hasil Function
SELECT m.mhs_id, m.nama, hasik_insentive(m.mhs_id) AS Total_Insentif
FROM Mahasiswa m
ORDER BY m.mhs_id;

