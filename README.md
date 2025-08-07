# Final Task - ID/X Partners Data Engineer

## 📌 Judul Proyek  
**Membangun Sistem Data Warehouse dan Pipeline ETL untuk Analisis Data Perbankan**

## 👋 Tentang Proyek  
Proyek ini merupakan bagian dari tantangan akhir program Virtual Internship Experience (VIX) bersama ID/X Partners. Tantangan ini mensimulasikan kasus nyata dari klien perusahaan di industri perbankan yang mengalami kesulitan dalam mengintegrasikan data dari berbagai sumber—termasuk file Excel, CSV, dan database SQL Server.

Sebagai seorang Data Engineer, saya mengembangkan sistem Data Warehouse terintegrasi, membangun pipeline ETL menggunakan Talend Open Studio, dan merancang stored procedure yang efisien untuk membantu pelaporan dan analitik data secara real-time.

## 📂 Dataset
Berikut adalah sumber data yang digunakan:
- `transaction_excel.xlsx` (Excel)
- `transaction_csv.csv` (CSV)
- Database `sample.bak` yang berisi:
  - `transaction_db`
  - `account`
  - `customer`
  - `branch`
  - `city`
  - `state`

## 🎯 Tujuan Pekerjaan
1. Mendesain dan membangun Data Warehouse (`DWH`)
2. Membuat proses ETL untuk tabel Dimensi dan Fakta
3. Menggabungkan data transaksi dari berbagai sumber tanpa duplikasi
4. Membuat 2 stored procedure:
   - `DailyTransaction` – untuk rekap transaksi harian
   - `BalancePerCustomer` – untuk melihat saldo akhir setiap nasabah

## 🏗️ Arsitektur Proyek
- **Tools**: SQL Server, Talend Open Studio, GitHub
- **Database**: Data Warehouse (`DWH`) terdiri dari:
  - DimCustomer
  - DimAccount
  - DimBranch
  - FactTransaction
- **ETL**: Pipeline Talend dibuat untuk ekstraksi, transformasi, dan pemuatan data dari berbagai sumber
- **Stored Procedure**:
  - [dailytransaction.sql](https://github.com/IvanBesti/PBI-DATAENGINEERING-ID-X/blob/main/dailytransaction.sql)
  - [balancepercustomer.sql](https://github.com/IvanBesti/PBI-DATAENGINEERING-ID-X/blob/main/balancepercustomer.sql)

## 🔍 Hasil Utama

### ✅ Struktur Data Warehouse
Lihat query pembuatan data warehouse dan tabel-tabelnya di sini:  
📎 [dwh.sql](https://github.com/IvanBesti/PBI-DATAENGINEERING-ID-X/blob/main/dwh.sql)

### ✅ Video Penjelasan Proyek
🎥 [Klik untuk menonton presentasi video proyek di YouTube](https://youtu.be/V5JHpCz38cM)

## 🧑‍💻 Tentang Saya  
**Ivan Jaelani Besti**  
Mahasiswa Rekayasa Perangkat Lunak di Universitas Pendidikan Indonesia.  
Tertarik pada bidang data engineering, machine learning, dan cloud computing.  
🔗 [LinkedIn](https://www.linkedin.com/in/ivan-jaelani-besti-3707221a1/)

---

Terima kasih telah mengunjungi repositori ini! Jika ada pertanyaan atau ingin berdiskusi lebih lanjut, silakan hubungi saya melalui email: **ivan.j.besti@upi.edu**
