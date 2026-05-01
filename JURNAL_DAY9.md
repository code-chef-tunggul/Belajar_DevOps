# Learning Journal - Day 9: Data Transfer Mastery (SCP & Rsync)

## Overview
Setelah berhasil membangun "lorong aman" melalui SSH, hari ini saya fokus pada metode pengiriman data antar sistem. Memahami perbedaan antara pengiriman file statis (SCP) dan sinkronisasi cerdas (Rsync) sangat krusial untuk efisiensi kerja remote.

## Key Concepts Learned

### 1. SCP (Secure Copy)
Metode pengiriman file yang cepat dan aman menggunakan protokol SSH. Cocok untuk pengiriman file tunggal atau konfigurasi kecil.
- **Karakteristik:** Mengirim ulang seluruh data terlepas dari apakah file sudah ada di tujuan atau belum.
- **Command:** `scp file.txt user@host:/path/tujuan`

### 2. Rsync (Remote Sync)
Alat sinkronisasi file yang sangat cerdas dan efisien.
- **Delta Transfer Algorithm:** Rsync hanya mengirimkan bagian file yang berubah saja (selisihnya), bukan seluruh file. 
- **Kelebihan:** Hemat bandwidth dan jauh lebih cepat untuk folder berukuran besar.
- **Common Flags:**
  - `-a` (Archive): Menjaga permissions, symlinks, dan atribut file tetap sama.
  - `-v` (Verbose): Menampilkan progres pengiriman secara detail.
  - `-z` (Compress): Mengompres data saat pengiriman untuk mempercepat proses di jaringan lambat.

### 3. Trust Relationship & Automation
Berhasil mengimplementasikan `ssh-copy-id` ke beberapa akun (`staf_dapur`), sehingga pengiriman data via SCP dan Rsync dapat berjalan otomatis tanpa intervensi password. Ini adalah pondasi untuk **CI/CD Pipeline** di masa depan.

## Hands-on Practice
1. **Passwordless Transfer:** Mendaftarkan Public Key ke akun tujuan untuk pengiriman data instan. 
2. **Smart Syncing:** Melakukan update pada folder proyek dan membuktikan bahwa Rsync hanya mengirimkan file yang baru ditambahkan (`wasabi.txt`), bukan seluruh isi folder.
3. **Verification:** Memastikan integritas file di sisi penerima menggunakan navigasi terminal.

## Summary
"Efficiency is doing things right; Effectiveness is doing the right things."
Hari ini saya belajar untuk efektif dengan Rsync. Tidak perlu mengirim 1GB data jika yang berubah hanya 1KB. Fokus berikutnya: **Phase 3 - Web Server Deployment.**
