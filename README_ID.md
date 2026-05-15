Gambaran Umum
Repositori ini berisi skrip Bash yang dirancang untuk mengotomatiskan instalasi GrapheneOS pada perangkat Google PIXEL apa pun. Skrip ini melakukan pembaruan sistem yang diperlukan, menginstal paket yang dibutuhkan, dan memandu pengguna melalui proses flashing.

Prasyarat
Sebelum menjalankan skrip, pastikan Anda memiliki hal-hal berikut:

* Komputer yang menjalankan distribusi Linux berbasis Debian (misalnya, Ubuntu).

* Perangkat Pixel.

* Kabel USB untuk menghubungkan perangkat Anda ke komputer.

* Pengetahuan dasar tentang penggunaan terminal.

Apa yang dilakukan skrip:

1. Memperbarui dan Meningkatkan Paket Sistem

2. Menginstal Paket yang Diperlukan

3. Mengunduh Rilis GrapheneOS
* Skrip mengambil versi GrapheneOS terbaru untuk perangkat Pixel.

* Skrip membuat direktori yang diperlukan untuk menyimpan file yang diunduh.

4. Memverifikasi Tanda Tangan
* Skrip mengunduh dan memverifikasi penanda tangan yang diizinkan untuk GrapheneOS untuk memastikan integritas file instalasi.

5. Unduh File Instalasi
* Skrip akan mengunduh file zip instalasi dan pembaruan OTA untuk GrapheneOS.

6. Siapkan Perangkat
* Ikuti petunjuk di layar untuk membuka kunci bootloader perangkat Pixel Anda.

7. Instal GrapheneOS
* Skrip akan membongkar file instalasi dan menjalankan proses instalasi.

8. Kunci Bootloader
* Setelah instalasi, bootloader akan dikunci kembali untuk keamanan.

Cara Penggunaan
Untuk menjalankan skrip, CONTOH UNTUK MODEL PIXEL 10:

(sesuaikan dengan model PIXEL Anda)

jalankan perintah berikut di terminal Anda:

-------------------------------------------------------------------------------

```bash
bash /home/$USER/Downloads/PIXEL10.sh
```

Ikuti petunjuk yang diberikan oleh skrip untuk menyelesaikan proses instalasi.

----------------------------------------------------------------------------

Catatan Penting

* Cadangkan Data Anda: Menginstal OS baru akan menghapus semua data di perangkat Anda. Pastikan Anda telah mencadangkan informasi penting apa pun.

* Verifikasi Boot: Setelah instalasi, gunakan fitur pengesahan yang disediakan oleh GrapheneOS untuk memverifikasi integritas instalasi Anda.

Kesimpulan
Skrip ini menyederhanakan instalasi GrapheneOS pada perangkat Pixel Anda. Dengan mengikuti langkah-langkah yang diuraikan di atas, Anda dapat memastikan proses instalasi yang lancar. Untuk masalah atau pertanyaan apa pun, silakan merujuk ke dokumentasi resmi GrapheneOS atau mintalah bantuan dari komunitas.
