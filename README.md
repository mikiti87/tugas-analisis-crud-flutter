# praktikum_api_crud

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
Tugas crud fluuter 
Nama; baruna akbar rizqi
Kelas;trpl2b
Nim;362458302069

Tugas pembelajaran api
1. Memahami konsep dasar API (Application Programming Interface) dan REST API.
 2. Menggunakan package http di Flutter untuk melakukan permintaan (request) ke API eksternal.
 3. Melakukan operasi CRUD (Create, Read, Update, Delete) terhadap data melalui API. 
4. Mengurai data JSON (parsing) dan mengubahnya menjadi objek Dart (Model).
 5. Menampilkan data dari API ke dalam UI Flutter menggunakan widget seperti ListView.
 6. Mengimplementasikan styling dasar pada komponen UI untuk menyajikan data den gan rapi. 
7. Mengelola state secara sederhana untuk menangani data yang bersifat asinkron (asynchronous)

Jawaban
1.API (Application Programming Interface) adalah seperangkat definisi, protokol, dan tools untuk membangun perangkat lunak aplikasi.
2.


Disini saya terdapat error ketika sedang menambahkan http:1.2.1 lalu saya menjalankan perintah flutter pub get lalu memunculkan ini /
PS C:\Users\ASUS\praktikum_api_crud> flutter pub get
Unhandled exception:
Error on line 37, column 3: Expected a key while parsing a block mapping.
   ╷
37 │   cupertino_icons: ^1.0.8
   │   ^
   ╵
#0      Parser._parseBlockMappingKey (package:yaml/src/parser.dart:454:5)
#1      Parser._stateMachine (package:yaml/src/parser.dart:100:16)
#2      Parser.parse (package:yaml/src/parser.dart:61:19)
#3      Loader._loadMapping (package:yaml/src/loader.dart:169:23)
#4      Loader._loadNode (package:yaml/src/loader.dart:88:35)
#5      Loader._loadDocument (package:yaml/src/loader.dart:68:20)
#6      Loader.load (package:yaml/src/loader.dart:60:20)
#7      loadYamlDocument (package:yaml/yaml.dart:69:25)
#8      loadYamlNode (package:yaml/yaml.dart:54:5)
#9      loadYaml (package:yaml/yaml.dart:41:5)
#10     FlutterManifest.createFromString (package:flutter_tools/src/flutter_manifest.dart:45:28)
#11     FlutterManifest.createFromPath (package:flutter_tools/src/flutter_manifest.dart:39:28)
#12     runInContext.<anonymous closure> (package:flutter_tools/src/context_runner.dart:225:44)
#13     AppContext._generateIfNecessary.<anonymous closure> (package:flutter_tools/src/base/context.dart:108:42)
#14     _LinkedHashMapMixin.putIfAbsent (dart:_compact_hash:674:23)
#15     AppContext._generateIfNecessary (package:flutter_tools/src/base/context.dart:95:20)
#16     AppContext.get (package:flutter_tools/src/base/context.dart:125:32)
#17     featureFlags (package:flutter_tools/src/features.dart:13:42)
#18     run.<anonymous closure> (package:flutter_tools/runner.dart:49:40)
#19     runInContext.runnerWrapper (package:flutter_tools/src/context_runner.dart:77:18)
<asynchronous suspension>
#20     AppContext.run.<anonymous closure> (package:flutter_tools/src/base/context.dart:154:19)
<asynchronous suspension>
#21     main (package:flutter_tools/executable.dart:101:3)
<asynchronous suspension>
PS C:\Users\ASUS\praktikum_api_crud>/

Ternyata maslahnya ada di sini 
 
Di bagian ini saya tadi tidka lurus 
  disini kok muncul ilegar karakter padahal saya sudah mencocokkan dengan yang ada di ppt 
Dengan output error illegal character 8217
Namun setelah saya mengkopi kode teman saya yang padahal sama itu malah bekerja dan tidak error raya kurang tahu bagaimana penjelasanya tapi berkat itu malah menjadi tidak error lagi 

 untuk bagian ini juga error tapi berkat kopi dengan teman saya menjadi tidak error saya tidak tahu apa yag kurang saya sudah memastikan dengan teliti bahwa itu sama dengan yang ada di ppt atau file nya bahkan saya sudah mencoba dengan dua cara yaitu menyalinnlangsung dari pptnya yaitu kodenya lalu saya tempel lalu saya hapus nomer yang ujung itu 
Atau saya ketik manual satu demi satu tapi dengan bantuan tap juga tapi masih error sedangkan ketika saya mencopy code teman saya yang itu benar benar sama dengan kode saya yang error tpi itu dapat menghilangkan error nya 
 ini adalah ketika saya hendak untuk menambahkan user padahal saya sudah 	menambahkan file add user  
Dan sudah saya panggil di main 
 tapi masih error dengan keluar perlu otentifikasi 

 ini juga saya sudah menambahkan edit user dan hapus user 
Yang mana filenya ada di api 
 
Berikut tapi masih tidak bisa untuk menghapus 
 
Ini adalah tampilanya 

 ini adalah untuk mengubah data dari user   saya sudahh membuat edit user disini
 dan di main juga sudah saya tambahkan atau panggil edit user tapi masih tidak bisa untuk menambahkan atau mengubah data user 

Kesimpulan
Saya masih bingung dengan alurnya tapi sudah agak sedikit mengerti tentang bagaimana alurnya 
Dan juga tentang error nya saya masih bingung kenapa bisa error padahal code dari ppt sudah saya salin dan itu benar harusnya sedangkan ketika saya mencopi kode dari teman saya yang itu notabenya sama dengan code yang ada di ppt itu berhasil tidak terjadi error sekian terimakasih

