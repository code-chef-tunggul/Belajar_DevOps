# Learning Journal - Day 7: File Permissions & Ownership

## Overview
Hari ini saya mendalami sistem keamanan Linux di level file dan direktori. Memahami siapa yang berhak membaca, menulis, dan mengeksekusi file adalah pondasi krusial bagi seorang DevOps Engineer dalam menjaga integritas data di server.

## Key Concepts Learned

### 1. Understanding rwx (Read, Write, Execute)
Setiap file di Linux memiliki atribut keamanan yang dibagi untuk tiga entitas:
- **Owner (u):** Pemilik file.
- **Group (g):** Kelompok user yang diberikan akses.
- **Others (o):** Semua user lain di dalam sistem.



### 2. Numerical (Octal) Mode
Menggunakan angka untuk mengatur izin jauh lebih efisien:
- **4** = Read (Membaca)
- **2** = Write (Menulis/Mengedit)
- **1** = Execute (Menjalankan)

**Kombinasi Umum:**
- `7` (4+2+1): Full access.
- `6` (4+2): Read & Write.
- `5` (4+1): Read & Execute.
- `0`: No access.



### 3. Essential Commands
- `ls -l`: Melihat detail izin file (Permissions string).
- `chmod`: Mengubah izin akses file/folder.
- `chown`: Mengubah kepemilikan (Ownership) file/folder.

## Hands-on Practice
1. **Security Testing:** Membuat file `resep_rahasia.txt` dan mengunci aksesnya menggunakan `chmod 600`.
2. **Verification:** Membuktikan bahwa user lain (`staf_dapur`) mendapatkan pesan `Permission denied` saat mencoba mengakses file milik root/owner.
3. **Directory Shielding:** Mengatur folder proyek agar hanya bisa diakses oleh grup tertentu.

## Summary
"In the kitchen, not everyone touches the Chef's knife. In Linux, not everyone touches the root's code." 
Fokus hari ini adalah **Logic and Security**. No more drama, just strict access control.

