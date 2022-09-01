class AwwaliyahModel {
  final String? level;
  final String title;
  final String? conten;

  AwwaliyahModel({
    this.conten,
    this.level,
    required this.title,
  });
}

var awwaliyahList = [
  AwwaliyahModel(
    level: "Awwaliyah",
    title: "Huruf Hijaiyyah, Makharijul Huruf dan Sifatul huruf",
  ),
  // Huruf Hijaiyyah
  AwwaliyahModel(
    title: "Huruf Hijaiyyah",
  ),
  // Pengenalan Huruf Hijaiiyah
  AwwaliyahModel(
    title: "Pengenalan Huruf Hijaiiyah",
    conten: '''

### Tabel Huruf Hijaiyyah

|      NO      |        HURUF HIJAIYYAH        |        LATIN           |
|--------------|-------------------------------|------------------------|
|      01      |         ا                     |        alif            |
|      02      | ب                             |         ba'            |
|      03      |    ت                          |         ta'            |
|      04      |     ث                         |          tsa'          |
|      05      |       ج                       |              jim       |
|      06      |          ح                    |           ha           |
|      07      |            خ                  |          kha'          |
|      08      |             د                 |            dal         |
|      09      |               ذ               |               dzal     |
|      10      |              ر                |                  ra'   |
|      11      |              ز                |             za         |
|      12      |               س               |        sin             |
|      13      |              ش                |         syin           |
|      14      |                  ص            |       shad             |
|      15      |                ض              |         dhad           |
|      16      |              ط                |       tha'             |
|      17      |                ظ              |        zha'            |
|      18      |                 ع             |          'ain          |
|      19      |                   غ           |     ghain              |
|      20      |                ف              |          fa'           |
|      21      |                  ق            |             qaf        |
|      22      |                ك              |                kaf     |
|      23      |                  ل            |               lam      |
|      24      |                م              |              mim       |
|      25      |                   ن           |                nun     |
|      26      |                 و             |             wau        |
|      27      |         هـ                    |      haa               |
|      28      |                  ي            |        ya'             |
|      29      |                  ء            |        hamzah          |
|      30      |                  ﻻ            |           lam alif     |


Hi! I'm your first Markdown file in **StackEdit**. If you want to learn about StackEdit, you can read me. If you want to play with Markdown, you can edit me. Once you have finished with me, you can create new files by opening the **file explorer** on the left corner of the navigation bar.

![This is Image](https://cdn.wallpapersafari.com/92/45/p7rbaM.jpg)
''',
  ),
  // Tanda Baca
  AwwaliyahModel(
    title: "Tanda Baca",
    conten: '''

1) Harakat fathah ( ﹷ ) adalah baris tanda bunyi dasar "a". Harakat tersebut untuk menandai huruf hidup. Contoh, a (  اَ  ), ba (  بَ  ), ta (  تَ  ), dan tsa (  ثَ  ). 
2) Harakat kasrah ( -ِ ) yang berbunyi "i". Contohnya, ji (   جِ  ), hi (  حِ  ), khi (  خِ  ), di ( دِ ). 
3) Harakat dhammah ( -ُ ) adalah baris tanda bunyi dasar "u", contohnya dzu (  ذُ  ), ru (  رُ  ), zu (  زُ  ), su (   سُ  ). 
4) Harakat tanwin adalah baris tanda bunyi "an","in", atau "un" sebagai tanda huruf hidup. Harakat tanwin terbagi menjadi tiga macam di antaranya, fathatain atau tanwin fathah (  ً-  ), kasratain atau tanwin kasrah (  ٍٍ- ), dan dhammatain atau tanwin dhammah (  ٌ- ). Khusus untuk tanda baca atau harakat fathatain atau tanwin fathah, harus menambahkan huruf alif setelahnya. Kecuali pada dua hruuf berikut yakni, hamzah ( ء ) dan ta' makfulah atau marbuthah ( ة ). 
5) Harakat sukun ( _ْ ) adalah penanda hilangnya vokal yaitu tanda mati sebuah huruf hijaiyah. Tanda baca ini tidak dibaca dan tidak menghasilkan bunyi apapun. Contoh, almautu ( الْمَوْتُ ).
6) Harakat syiddah atau tasydid ( -ّ ) adalah tanda baca yang berbunyi tebal atau huruf ganda. Contohnya, anna (  اَ  نَّ ), madda ( مَدَّ ). 
''',
  ),

  // Makharijul Huruf
  AwwaliyahModel(
    title: "Makharijul Huruf",
    conten: '''

Makharijul huruf sejarah bahasa adalah tempat keluarnya huruf, artinya tempat-tempat pelafalan huruf hijaiyyah yang benar. Dalam hal ini banyak ulama yang masih memperdebatkan berapa jumlah pasti dari makharijul huruf. namun sebagianbesar ulama qurro' dan ahlul ada' mengikuti pendapat Syekh Kholil bin Ahmad an-Nahwiy (Guru Imam Sibaweh).
Menurut Syekh Kholil bin Ahmad an-Nahwiy Makhorijul Huruf Hijaiyah itu ada 17 tempat, dan bila diringkas ada 5 tempat, yatu; Al-Jauf (lubang /rongga mulut), Al-Halqu (tenggorokan / kerongkongan), Al-Lisanu (lidah), Asy-Syafatain (dua bibir) dan Al-Khoisyum (janur hidung).

''',
  ),
  // Pengenalan Makharijul Hijaiiyah"
  AwwaliyahModel(
    title: "Penjelasan Makharijul Huruf",
    conten: '''

al-Jauf (lubang/rongga mulut)

Yaitu tempat keluarnya huruf hijaiyah yang terletak pada rongga mulut dan rongga tenggorokan. Bunyi huruf yang keluar dari rongga mulut dan rongga tenggorokan ada tiga macam, yaitu ; alif ( ا ), wawu mati ( وْ ) dan ya’ mati ( يْ ) dengan penjelasan sebagai berikut :
Alif dan sebelumnya ada huruf yang difathah Contoh : مَالَا غَوَى 
Wawu mati dan sebelumnya ada huruf yang didhommah Contoh :قُوْلُوْا 
Ya' mati dan sebelumnya ada huruf yang dikasrah Contoh :حَامِدِيْنَ


al-Halqu (tenggorokan/kerongkongan)

Yaitu tempat keluar bunyi huruf hijaiyah yang terletak pada kerongkongan / tenggorokan. Dan berdasarkan perbedaan teknis pelafalannya, huruf-huruf halqiyah (huruf-huruf yang keluar dari tenggorokan) dibagi menjadi tiga bagian yaitu ; 
Aqshal halqiy (pangkal tenggorokan), yaitu huruf hamzah ( ء )dan ha' ( ه ) 
Wasthul halqiy (pertengahan tenggorokan), yaitu huruf ha' ( ح ) dan 'ain ( ع ) 
Adnal halqiy (ujung tenggorokan), yaitu huruf ghoin ( غ ) dan kho' ( خ )

al-Lisanu (lidah)

Bunyi huruf hijaiyah dengan tempat keluarnya dari lidah ada 18 huruf, yaitu : Berdasarkan delapan belas huruf itu dapat dikelompokkan menjadi 10 makhraj, yaitu sebagai berikut :
Pangkal lidah dan langit-langit mulut bagian belakang yaitu huruf Qof (ق). Maksudnya bunyi huruf qof ini keluar dari pangkal lidah dekat dengan kerongkongan yang dihimpitkan ke langit-langit mulut bagian belakang.
Pangkal lidah bagian tengah dan langit-langit mulut bagian tengah, yaitu huruf Kaf (ك). Maksudnya bunyi huruf kaf ini keluar dari pangkal lidah di depan makhraj huruf qof, yang dihimpitkan ke langit-langit bagian mulut bagian tengah. “Dua huruf tersebut ( ق ) dan ( ك ), lazimnya disebut huruf LAHAWIYAH ( لهويّة ), artinya huruf-huruf sebangsa anak mulut atau sebangsa telak lidah.”
Tengah-tengah lidah yaitu huruf Jim ( ج ), Syin ( ش ) dan Ya' ( ي ). Maksudnya bunyi huruf-huruf tersebut keluar dari tengah-tengah lidah tepat, serta menepati langit-langit mulut yang tepat di atasnya. “Tiga huruf ini lazimnya disebut huruf SYAJARIYAH ( شجريّة ), artinya huruf-huruf sebangsa tengah lidah.”
tepi lidah, yaitu huruf Dlod ( ض ). Maksudnya bunyi huruf Dlod ( ض ) keluar dari tepi lidah (boleh tepi lidah kanan atau kiri) hingga sambung dengan makhrojnya huruf lam, serta menepati graham. “Huruf Dlod ( ض ) ini lazimnya disebut huruf JAMBIYAH (حنبيّة), artinya huruf sebangsa tepi lidah.”
Ujung tepi lidah, yaitu huruf Lam (ل). Maksudnya bunyi huruf Lam (ل) keluar dari tepi lidah (sebelah kiri/kanan) hingga penghabisan ujung lidah, serta menepati dengan langit-langit mulut atas.
Ujung lidah, yaitu huruf Nun (ن). Maksudnya bunyi huruf Nun (ن) keluar dari ujung lidah (setelah makhrojnya Lam (ل), lebih masuk sedikit ke dasar lidah dari pada Lam (ل)), serta menepati dengan langit-langit mulut atas.
Ujung lidah tepat, yaitu huruf Ro' (ر). Maksudnya bunyi huruf Ro' (ر) keluar dari ujung lidah tepat (setelah makhrojnya Nun dan lebih masuk ke dasar lidah dari pda Nun), serta menepati dengan langit-langit mulut atas. “Tiga huruf tersebut di atas (Lam, Nun dan Ro'), lazimnya disebut huruf DZALQIYAH (ذلقية), artinya huruf-huruf sebangsa ujung lidah.”
Kulit gusi atas, yaitu Dal (د), Ta' (ت) dan Tho' (ط). Maksudnya bunyi huruf-huruf tersebut keluar dari ujung lidah, serta menepati dengan pangkal dua gigi seri yang atas. “Tiga huruf tersebut lazimnya disebut NATH'IYAH (نطغية), artinya huruf-huruf sebangsa kulit gusi atas.“
Runcing lidah, yaitu huruf Shod (ص), Sin (س) dan Za' (ز). Maksudnya bunyi huruf-huruf tersebut keluar dari ujung lidah, serta menepati ujung dua gigi seri yang bawah. “Tiga huruf tersebut lazimnya disebut huruf ASALIYAH (أسلية), artinya huruf-huruf sebangsa runcing lidah.” 
Gusi, yaitu huruf Dho' (ظ), Tsa' (ث) dan Dzal (ذ). Maksudnya huruf-huruf tersebut keluar dari ujung lidah, serta menepati dengan ujung dua gigi seri yang atas. “Tiga huruf ini lazimnya disebut huruf LITSAWIYAH (لثوية), artinyahuruf sebangsa gusi.”

asy-Syafatain (dua bibir)

Yaitu tempat keluarnya huruf hijaiyah yang terletak pada kedua bibir.Yang termasuk huruf-huruf syafatain ialah wawu (و), fa' (ف), mim (م) dan ba' (ب) dengan perincian sebagai berikut :
Fa' (ف) keluar dari dalamnya bibir yang bawah, serta menepati dengan ujung dua gigi seri yang atas.
Wawu, Ba, Mim (و , ب , م) keluar dari antara dua bibir (antara bibir atas dan bawah). Hanya saja untuk Wawu bibir membuka, sedangkan untuk Ba dan Mim bibir membungkam.

“Empat huruf tersebut di atas lazimnya disebut huruf SYAFAWIYAH, artinya huruf-huruf sebangsa bibir.”

al-Khoisyum (janur hidung)

Yaitu tempat keluarnya huruf hijaiyah yang terletak pada janur hidung. Dan jika kita menutup hidung ketika membunyikan huruf tersebut, maka tidak dapat terdengar. Adapun huruf-hurufnya yaitu huruf-huruf ghunnah mim dan nun dengan ketentuan sebagai berikut:
Nun bertasydid (نّ) 
Mim bertasydid (مّ)
Nun sukun yang dibaca idghom bigunnah, iqlab dan ikhfa' haqiqiy
Mim sukun yang bertemu dengan mim (م) atau ba (ب)



''',
  ),

  // Sifatul huruf
  AwwaliyahModel(
    title: "Sifatul huruf",
    conten: """

Dikutip dari buku Panduan Lengkap Belajar Ilmu Tajwid, Siti Nur Aidah dan Tim Penerbit KBM Indonesia) (2020: 14) menjelaskan bahwa pengertian sifatul huruf adalah karakter pengeluaran huruf itu dari tempat keluarnya. Sedangkan menurut Al-Qamhawi dalam karyanya al-Burhan fi at-tajwid al-Quran menyatakan bahwa pengertian dari sifatul huruf adalah tata cara yang jelas tentang sifat menurut ketentuannya.

Berikut adalah beberapa contoh dari sifatul huruf menurut al-Jazari dan as-Syathibi:
Hams dan jahr merupakan sifat huruf yang ketika dibaca mengalirkan udara.
Syiddah dan Rakhawah, Syiddah bermakna tertahannya suara, sedangkan Rakhawah mengalirnya suara.
Isti'la dan Istifal yang bermakna lidah terangkat ketika membaca sebagian huruf, sedangkan Istifal ialah merendahnya lidah ketika membaca huruf tertentu.
Ithbaq dan Infitah, Ithbaq bermakna terangkatnya lidah hingga menutup semua langit-langit mulut. Sedangkan infitah yang berarti terbukanya lidah (tidak menutup semua langit-langit mulut).
Shafir yang bermakna berdesis.
Tafassyi dan Istithalah, dimana Tafassyi bermakna udara yang banyak berhembus dari mulut. Sedangkan Istithalah berarti makhraj yang memanjang dari ujung lidah ke ujung yang lain.
Inhiraf dan Takrir, Inhiraf bermakna meyimpang. Sedangkan takrir adalah gerakan berulang ketika membaca suatu huruf.
Qalqalah, Qalqalah adalah bunyi pantulan dari pembacaan huruf tertentu.
Idzlaq dan Ishmat, Idzlaq berarti mudah dikeluarkan (diucapkan) dari mulut, karena makhrajnya dekat dengan ujung lidah.
Ishmat berarti kebalikannya, yakni tidak semudah idzlaq dalam pengucapan.
Ghunnah, Ghunnah disini sifat yang dikhususkan oleh as-Syathibi, yang berupa huruf Nun dan Mim sukun, dan yang bertasydid.
Al-Hawi, Al-Hawi berarti huruf yang makhrajnya leluasa untuk mengeluarkan suara yang lebih keras dibandingkan dengan makhraj huruf lain.
Mad wal lin, mad wal lin adalah huruf Ya, Wawu, dan Alif yang sebelumnya didahului huruf yang berharakat kasrah, dhummah ataupun fathah kemudian dibaca lembut.



""",
  ),
];
