<img src="https://i.imgur.com/sJzfZsL.jpg" width="150" align="right">

# Instapy Quickstart

### Installation
Dengan menggunakan repositori ini, Anda akan dapat menginstal dan menggunakan InstaPy hanya dengan beberapa langkah.

1. Unduh zip dari repositori ini dengan mengklik tombol hijau di sudut kanan atas. Kloning atau unduh.
2. Buka zip folder dan buka folder instalasi.
3. Klik dua kali file instalasi untuk sistem Anda.
4. Jika Anda melewatkan instalasi apa pun, itu akan memberi tahu Anda apa yang harus Anda instal
5. Setelah berhasil diinstal, Anda dapat mengedit file quickstart atau menggunakan file template mana pun dari folder template quickstart
6. Masukkan nama pengguna dan kata sandi Anda dan ubah apa pun yang Anda inginkan. Manfaatkan ** [dokumentasi lengkap] (https://github.com/timgrossmann/InstaPy) **.
7. Langkah terakhir adalah membuka _run folder_ dan klik dua kali file yang sesuai dengan platform Anda, mis. _mac_start.command_ untuk MacOS.

>Jika Anda menggunakan salah satu file template, pastikan untuk menyalin dan menempelkannya ke folder yang sama dengan file _quickstart.py_ lalu ganti namanya menjadi _quickstart.py_ karena itu adalah nama file yang akan dipilih sekali Anda mengklik dua kali skrip jalankan. 

#### Basic quickstart file 
Untuk memulai dengan cepat, kami telah menyiapkan file quickstart dasar di mana Anda hanya perlu mengedit nama pengguna dan kata sandi, di dalam tanda kutip tunggal, untuk memastikan Anda sudah siap.
Setelah menguji instalasi Anda dengan memulai InstaPy sekali, Anda dapat masuk dan menggunakan [dokumentasi] (https://github.com/timgrossmann/InstaPy) untuk mengkonfigurasi bot pribadi Anda.

File quickstart dasar terlihat seperti ini:
```python
""" Quickstart script for InstaPy usage """
# imports
from instapy import InstaPy
from instapy import smart_run

# kredensial login
insta_username = ''  # <- enter username here
insta_password = ''  # <- enter password here

# dapatkan sesi InstaPy!
# set headless_browser = True untuk menjalankan InstaPy di ​​latar belakang
session = InstaPy(username=insta_username,
                  password=insta_password,
                  headless_browser=False)

with smart_run(session):
    """ Activity flow """
    # general settings
    session.set_relationship_bounds(enabled=True,
                                    delimit_by_numbers=True,
                                    max_followers=4590,
                                    min_followers=45,
                                    min_following=77)

    session.set_dont_include(["friend1", "friend2", "friend3"])
    session.set_dont_like(["pizza", "#store"])

    # activity
    session.like_by_tags(["natgeo"], amount=10)
```

> Saat menambahkan baris ke skrip, pastikan untuk menggunakan editor kode yang menangani indentasi. Jika tidak, Anda akan mendapatkan kesalahan saat eksekusi.
---

#### Sudah menggunakan InstaPy sebelum `pip install instapy`?
Jika Anda telah menggunakan InstaPy sebelum memperbarui PyPi yang memungkinkan penginstalan dengan `pip install instapy`, Anda harus memindahkan database dan file log ke direktori ruang kerja yang baru.
[** Lihat panduan singkat ini tentang apa yang harus dilakukan! **] (https://github.com/timgrossmann/InstaPy#migrating-your-data-to-the-workspace-folder)

---

#### Mengalami masalah saat memasang?
Jika Anda mengalami masalah apa pun dengan penginstalan, gunakan repositori utama [InstaPy] (https://github.com/timgrossmann/InstaPy) untuk melaporkan masalah alih-alih repositori ini.


###### Bersenang-senang & tetap bertanggung jawab!