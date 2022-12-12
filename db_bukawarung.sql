-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 05:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`) VALUES
(2, 'rosiasafitri0@gmail.com', 'rosia123', 'rosia cantik', '+6287869426559');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Rosia Safitri', 'rosia', 'fcea920f7412b5da7be0cf42b8c93759', '+6287869462559', 'rosiasafitri77@gmail.com', 'jl.badaruddin desa bagu kec.pringgarata NTB');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(43, 'Media Tanam Hidroponik '),
(44, 'Peralatan Tani'),
(47, 'Obat Tanaman'),
(48, 'Pupuk'),
(50, 'Bibit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_descriptio` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_descriptio`, `product_image`, `product_status`, `date_created`) VALUES
(46, 40, 'pupuk biolk', 30000, '<p>BIOLK<br />\r\nMerupakan pupuk hayati dengan bahan aktif bakteri Bacillus sp. dan Pseudomonas sp. yang diaplikasikan untuk seed treatment dan dapat digunakan pada semua benih tanaman. BIO LK diformulasikan khusus untuk membantu tanaman dalam menghadapi cekaman kekeringan atau kadar air rendah. BIO LK berbentuk powder, berwarna coklat kehitaman dan memiliki variasi kemasan 100 gr, 250 gr dan 500 gr. BIO LK diaplikasikan dengan dosis 500 gr untuk kebutuhan benih 1 hektar.</p>\r\n', 'produk1657113168.png', 1, '2022-07-06 13:12:48'),
(48, 40, 'pupuk biosalin', 100000, '<p>BIO SALIN<br />\r\nMerupakan pupuk hayati dengan bahan aktif bakteri Pseudomonas sp. yang diaplikasikan untuk seed treatment dan dapat digunakan pada semua benih tanaman. BIO Salin diformulasikan khusus untuk membantu tanaman dalam menghadapi cekaman kadar garam tinggi (salin), seperti di wilayah pesisir pantai dan di lahan tergenang (rawa)..BIO Salin berbentuk powder, berwarna coklat kehitaman dan memiliki variasi kemasan 100 gr, 250 gr dan 500 gr. BIO Salin diaplikasikan dengan dosis 500 gr untuk kebutuhan benih 1 hektar.</p>\r\n', 'produk1657113313.png', 1, '2022-07-06 13:15:13'),
(49, 40, 'pupuk ecofert', 85000, '<p>Merupakan jenis pupuk hayati yang diperkaya dengan mikroorganisme unggulan yang bermanfaat bagi kesuburan tanah, dan dapat digunakan untuk tanaman pangan, hortikultura dan perkebunan. Butiran Ecofert berbentuk granul, berwarna abu-abu, dengan variasi kemasan 1 kg, 5 kg, dan 20 kg. Ecofert mengandung bahan aktif Aspergillus niger, Pseudomonas mendocina, Bacillus subtilis dan Bacollus flexus. Beberapa keunggulan yang didapat melalui penggunaan Ecofert adalah untuk meningkatkan tersedianya unsur hara N dan P, memacu pertumbuhan tanaman, meningkatkan penyerapan unsur hara tanah, dan meningkatkan efisiensi pemupukan sehingga dapat menghemat pupuk NPK hingga 25% dari dosis standar dengan dosis pemakaian Ecofert 20-40 kg/ha pada saat pengolahan tanah</p>\r\n', 'produk1657113416.jpg', 1, '2022-07-06 13:16:56'),
(51, 40, 'pupuk biodex', 250000, '<p>Merupakan bioaktivator perombak bahan organik. Biodex dibuat dengan menggunakan bahan aktif mikroba unggul yang memiliki kemampuan selulotik dan lignolitik tinggi seperti Trichoderma polysporum, T. viride, dan Fomitopsis meliae, sehingga waktu pengomposan relatif lebih singkat. Biodex berbentuk bubuk (powder) berwarna coklat kehitaman dan saat ini dijual dalam kemasan 2,5 kg. Biodex memiliki beberapa keunggulan, yaitu sesuai untuk limbah organik padat, tidak membutuhkan tambahan nutrisi, tidak perlu dilakukan pembalikan pada saat proses pengomposan dan sesuai untuk daerah tropis, dengan dosis pemakaian 2,5-5 kg/ton bahan organik.</p>\r\n', 'produk1657113583.jpg', 1, '2022-07-06 13:19:43'),
(52, 40, 'Pupuk biotara', 30000, '<p>Merupakan Pupuk Hayati yang adaptif dengan tanah masam di lahan rawa yang mampu meningkatkan produktivitas tanaman. Biotara mengandung bahan aktif Trichoderma sp., Bacillus sp, dan Azospirillum sp. Biotara berbentuk powder, berwarna coklat kehitaman, dengan variasi kemasan 2,5 kg, 10 kg dan 12,5 kg. Beberapa keunggulan dari Biotara antara lain, mampu mengikat unsur hara N dan P dalam tanah, mendekomposisi sisa-sisa bahan organik, meningkatkan pertumbuhan tanaman, peningkatan efisiensi pemupukan terutama N dan P hingga 30% dan meningkatkan hasil panen padi hingga 20% pada lahan rawa. Dosis pemakaian Biotara adalah 25 kg/ha saat pengolahan tanah.</p>\r\n', 'produk1657113677.png', 1, '2022-07-06 13:21:17'),
(54, 40, 'pupuk amoniak', 250000, '<p>Amoniak digunakan sebagai bahan mentah dalam industri kimia. Amoniak produksi Pupuk Kaltim dipasarkan dalam bentuk cair pada suhu -33 derajat Celsius dengan kemurnian minimal 99,5% dan campuran (impurity) berupa air maksimal 0,5%. Amoniak dibuat dari bahan baku gas bumi yang direaksikan dengan udara dan uap air yang diproses pada suhu dan tekanan tinggi secara bertahap melalui beberapa reaktor yang mengandung katalis. Pupuk Kaltim memiliki 5 (lima) pabrik Amoniak, yaitu Pabrik 1A, Pabrik 2, Pabrik 3, Pabrik 4, dan Pabrik 5. Kapasitas total mencapai 2,74 juta ton Amoniak per tahun.</p>\r\n', 'produk1657114058.jpg', 1, '2022-07-06 13:27:38'),
(56, 41, 'Benih Cabai / Cabe Rawit Hijau Super Garjo 10gr', 320000, '<p>Benih rawit hijau dengan vigor tanaman kuat dan mempunyai banyak cabang, cukup tahan penyakit dan serangan hama. Posisi buah semi menunduk, buah warna hijau agak besar sapat dipanen muda, pedas dan tahan virus. panjang buah 5 - 7cm diameter buah 1 - 1,2cm. dapat dipanen umur 80HST.</p>\r\n', 'produk1657536515.jpg', 1, '2022-07-11 10:48:35'),
(57, 41, '50 Benih Cabai Rawit Bangkok F1 bibit tanaman sayur sayuran cabe sambal MGI', 35000, '<p>- jenis cabai tipe merunduk</p>\r\n\r\n<p>- dapat beradaptasi di dataran rendah sampai tinggi.</p>\r\n\r\n<p>- tanaman kokoh dan punya banyak cabang.</p>\r\n\r\n<p>- buah berwarna putih kekuningan saat muda dan merah saat masak.</p>\r\n\r\n<p>- panjang 5-7 cm, diameter 1-1,3 cm dan berat 2,5 - 4 gr per buah</p>\r\n\r\n<p>- panen umur 80 hari setelah tanam dengan potensi hasil 1,5 - 2 kg per tanaman.</p>\r\n\r\n<p>- rasa sangat pedas.</p>\r\n', 'produk1657536714.jpg', 1, '2022-07-11 10:51:54'),
(58, 41, 'Benih Terong ungu Bungo F1 5 gram Bintang Asia', 25375, '<p>Benih terong Bungo F1 merupakan terong ungu hibrida hasil seleksi benih kualitas unggul produksi dari PT Bintang Asia. Menghasilkan buah terong berwarna ungu dan berukuran panjang. Terong ini cocok dibudidayakan di daerah dataran rendah hingga dataran menengah. Tergolong jenis terong yang pertumbuhannya kuat dan tahan terhadap penyakit layu. Buah sudah bisa dipanen ketika tanaman berumur +/- 45 HST. Terong berwarna ungu mengkilap, ukuran &plusmn;25 x5 cm, daging putih bersih, rasa manis. Dengan potensi hasil mencapai 50-60 ton/ha. Berat bersih: 5gr Tingkat kemurnian: 99% Daya tumbuh: 85% Expired: akan dikirimkan expired paling lama dari batch produksi terbaru. Kemasan ORIGINAL dari Pabrik (Benih yang di-kemas ulang bukan dari pabrik akan sangat berpotensi menurunkan daya tumbuh dan kualitas benih)</p>\r\n', 'produk1657536904.jpg', 1, '2022-07-11 10:55:04'),
(59, 41, '5g Benih Tomat Bareto Benih Tomat Tahan Penyakit dan Virus Bareto Benih Tomat Cap Panah Merah', 199, '<p>Rekomendasi Dataran: Menengah - Tinggi Ketahanan Penyakit*: Gemini Virus (GV), Layu Bakteri/ Bacterial Wilt (BW),Tomato Mosaic Virus (ToMV) Umur Panen (HST)*: 85 - 90 Bobot per Buah (g)*: 120 - 125 Potensi Hasil (ton/ha)*: 57 - 85 PVT: - *) Ketahanan penyakit, umur panen, bobot dan potensi hasil tergantung pada lingkungan dan perlakuan budidayanya. Daya Tumbuh Minimum: 85% Kemurnian: 99% Kadar Air Max: 7% Netto: 5 Gram Expired: Juni 2021</p>\r\n', 'produk1657537085.jpg', 1, '2022-07-11 10:58:05'),
(60, 41, 'Bibit Semangka F1 JUKKY Tanpa Biji 20gram', 245, '<p>Benih Bibit Semangka Non Biji Bersertifikat F1 JUKKY 20 gr. Semangka Non Biji Bersertifikat JUKKY F1 Produk M2U Seed Benih bersertifikat Berdaya tahan terhadap penyakit Kulit tebal Cocok untuk Pengangkutan jarak jauh penyimpanan yang lama Tidak mudah layu, bentuk buah oval Berwarna merah ,manis ,gurih ,garing ,anti retak. Cocok Untuk Berbagai Jenis Lahan Pertanian. Berdaya tumbuh tinggi dan mudah penyerbykan. Kulit berwarna hijau gelap bergaris Vertikal. Berat Buah rata rata 6-10 kg per buah ,Mampu Mencapai 15kg Dalam Kondisi Budidaya Yang Baik. Kemurnian 99.9 % Kadar air 8.0 % Daya kecambah 90 % Berat bersih 20gr Exp Juli 2021 Kemasan original pabrik (bukan repacking)</p>\r\n', 'produk1657537209.jpg', 1, '2022-07-11 11:00:09'),
(61, 41, 'Benih Sawi Shinta 25 gram Bibit Sayuran Hijau Sinta Cap Panah Merah', 190000, '<p>Rekomendasi Dataran: Rendah</p>\r\n\r\n<p>- Menengah Ketahanan Penyakit*:</p>\r\n\r\n<p>- Umur Panen (HST)*: 30 Bobot per Buah (g)*:</p>\r\n\r\n<p>- Potensi Hasil (ton/ha)*: 25 - 30</p>\r\n\r\n<p>*) Ketahanan penyakit, umur panen, bobot dan potensi hasil tergantung pada lingkungan dan perlakuan budidayanya</p>\r\n\r\n<p>SHINTA adalah caisim tipe batang besar dengan daun lebar. Cocok ditanam di dataran rendah - menengah Tanaman vigour dan tidak cepat berbunga. Caisim Shinta mempunyai tekstur yang renyah dan tidak berserat. Bisa dipanen pada umur 30 hst. Tips Menanam: Usai dipanen usahakan untuk dikeringanginkan lebih dulu sebelum dipacking</p>\r\n', 'produk1657537545.jpg', 1, '2022-07-11 11:05:45'),
(62, 41, 'Benih Bibit Sawi Pakcoy Masbro (Bintang Asia)', 22500, '<ul>\r\n	<li>Benih-Bibit Sawi Pakcoy Masbro (Bintang Asia)Pertumbuhan cepat, vigor dan seragam. Daun Lebar, Serat daging halus. Tangkai daun besar dan tebal, Rasa enak. Cocok untuk berbagai masakan. Umur Panen 25-30 hst</li>\r\n	<li>Nama Produk : Sawi Pakcoy Masbro</li>\r\n	<li>Produsen : Bintang Asia</li>\r\n	<li>Berat Netto : 10 gr</li>\r\n	<li>Warna daun : Hijau</li>\r\n	<li>Umur Panen : 25-30 hari setelah tanam</li>\r\n	<li>Daya Kecambah : 85%</li>\r\n	<li>Kemurnian : 99%</li>\r\n	<li>Kadaluarsa : 07 - 2022</li>\r\n	<li>Keterangan : Kemasan Original Pabrik</li>\r\n	<li>Rekomendasi :</li>\r\n	<li>Dapat ditanam dibedengan, Pot atau polybag ukuran diameter 30-40 cm, jarak tanam 30-40 cm atau bisa juga mengunakan sistem Hidroponik</li>\r\n	<li>*) Ketahanan penyakit, umur panen, bobot dan potensi hasil tergantung pada lingkungan dan perlakuan budidayanya.</li>\r\n</ul>\r\n', 'produk1657537699.jpg', 1, '2022-07-11 11:08:19'),
(63, 42, 'obat tanaman green tonic', 55000, '<p>sangat bagus untuk jenis tanaman buah ,sayuran.<br />\r\ncara :1sendok teh campur 1liter air semprot 3hari sekali di daun sama Batang pada sore /malam hari</p>\r\n', 'produk1657537877.jpg', 1, '2022-07-11 11:11:17'),
(64, 42, 'â€œTanaman 250ml Obat Pertanianâ€', 320000, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Anda Blast 250ml Fungisida Obat Pertanian Padi Obat Hama Padi Blas Obat Tanaman Padi Blast Obat Daun Padi</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'produk1657538219.jpeg', 1, '2022-07-11 11:16:59'),
(65, 42, 'Insektisida CURACRON 500EC 100ml Pembasmi Hama Obat Hama Obat Tanaman', 45000, '<p>uracron 500EC adalah salah satu Pestisida yang tergolong kedalam Insektisida atau akarisida yang dikeluarkan oleh PT. Syngenta Indonesia, Curacron 500EC sendiri mempunyai kandungan bahan aktif Profenofos 500g/l.<br />\r\n<br />\r\nCuracron 500EC mempunyai sifat sebagai racun Kontak dan lambung, dengan formulasi Emulsible Concentrate atau disingkat EC yang sering kita kenal dengan cairan pekat yang larut dengan air, warna dari formulasi Curacron 500EC adalah Kuning kecoklatan.<br />\r\n<br />\r\nCuracron 500 EC di mengendalikan hama pada tanaman budidaya, hama yang bisa dikendalikan diantaranya kutu daun, ulat grayak, ulat tanah, lalat buah, jangkrik, penggerek daun, penggerek batang, penggerek buah dan trhips. Curacron 500EC mempunyai efek translaminarnya yakni mampu menjangkau hama yang ada dibalik daun.<br />\r\n<br />\r\nMerk Dagang : Curacron 500EC<br />\r\nBahan aktif : Profenofos 500g/l<br />\r\nIsi : 100ml<br />\r\nFormulasi : EC (Emulsible Concentrate)/cairan pekat<br />\r\nWarna : Kuning kecoklatan<br />\r\nCara Kerja : Kontak dan Lambung<br />\r\nJenis : Insektisida/Akarisida<br />\r\nProdusen : PT. Syngenta Indonesia<br />\r\n<br />\r\nTanaman dan Hama Sasaran :<br />\r\n1. Cabai : Kutu daun, lalat buah, ulat grayak, ulat tanah, trhips, jangkrik.<br />\r\n2. Bawang merah : Ulat grayak (Spodoptera litura)<br />\r\n3. Tomat : Ulat buah (Heliothis armigera)<br />\r\n4. Semangka : Kutu daun, thrips, penggerek daun, penggerek batang, penggerek buah, lalat buah<br />\r\n5. Kubis : Ulat grayak, Perusak daun (Crocidolomia binotalis dan Plutella xylostella)<br />\r\n6. Kacang hijau : Perusak daun, ulat grayak<br />\r\n7. Kapas : Penggerek buah (Earias sp.), penggerek pucuk (Heliothis sp.)<br />\r\n8. Tembakau : Penggerek pucuk (Heliothis sp.) dan Ulat grayak (Spodoptera litura)<br />\r\n9. Tebu : Penggerek batang (Chilo auricilius dan C.saccharipagus)<br />\r\n10. Jeruk : Diaphorina citri</p>\r\n', 'produk1657538317.jpg', 1, '2022-07-11 11:18:37'),
(66, 42, 'Pupuk Organik 1 Liter / Obat Tanaman Cepat Berbuah / Obat Agar Tanaman Cepat Berbuah / Obat Tanaman ', 65000, '<ul>\r\n	<li>Produk ready stok</li>\r\n	<li>Siap kirim ke alamat</li>\r\n	<li>100% murni organic</li>\r\n	<li>Berkualitas tinggi</li>\r\n	<li>Kemasan 1 liter</li>\r\n	<li>Untuk semua jenis tanaman</li>\r\n	<li>Sertifikasi DEPTAN RI</li>\r\n	<li>Meningkatkan kuantitas/produksi tanaman</li>\r\n	<li>Meningkatkan kualitas hasil panen</li>\r\n	<li>Menjaga kelestarian lingkungan/tanah</li>\r\n	<li>Mengurangi pupuk kimia</li>\r\n	<li>Meningkatkan daya tahan tubuh tanaman</li>\r\n	<li>Penggunaan pupuk dapat mengurangi pupuk kimia hingga 10% &ndash; 20%.</li>\r\n</ul>\r\n', 'produk1657538477.jpg', 1, '2022-07-11 11:21:17'),
(67, 42, 'obat semprot PUPUK TANAMAN CAIR STRESS RECOVERY GA PREMIUM 500 ML langsung pakai', 56000, '<p>MW SEGALA MACAM POT,PERALATAN, PUPUK, OBAT HAMA, DLL<br />\r\nONE STOP BUYING FOR ALL YOUR GARDEN HOME<br />\r\nKLIK DIBAWAH INI HARGA JAMIN GA MAHAL YAH<br />\r\nDISARANKAN menambahkan produk packing agar lebih kuat saat pengiriman :<br />\r\nNOTE<br />\r\nPERSETUJUAN : jika aktual ongkirnya terdapat sisa maka akan disedekahkan ke<br />\r\nsosial. Beli berarti setuju. Pupuk Cair GA PREMIUM RECOVERY mengandung Asam<br />\r\nAmino dan B1 dimana bekerja cepat untuk memulihkan tanaman yang stress.<br />\r\n<br />\r\nKandungan :<br />\r\nMineral :<br />\r\nZn................100 ppm<br />\r\nB................. 200 ppm<br />\r\nCu............... 200 ppm<br />\r\nMn.............. 200 ppm<br />\r\nMo.............. 120 ppm<br />\r\nCo............... 90 ppm<br />\r\n<br />\r\nManfaat pupuk ini :<br />\r\n- Cuaca panas / kekeringan / banjir.<br />\r\n- Kesalahan jenis bahan kimia.<br />\r\n- Kesalahan dosis pupuk / pestisida.<br />\r\n- Saat pindah tanaman.<br />\r\n- Serangan hama.<br />\r\n<br />\r\ncara pakai :<br />\r\nSemprotkan GA PREMIUM RECOVERY pada daun secara merata.<br />\r\n<br />\r\nFrekwensi penyemprotan :<br />\r\nDilakukan 2-3 hari sekali.<br />\r\n<br />\r\nWaktu penyemprotan :<br />\r\nSebaiknya lakukan pada pagi hari sebelum jam 07.30 dan pada sore hari setelah<br />\r\njam 17.00.</p>\r\n', 'produk1657538576.jpg', 1, '2022-07-11 11:22:56'),
(68, 42, 'pupuk bunga aglonema / pupuk bunga / obat tanaman cepat berbuah pupuk perangsang buah / root up pera', 35000, '<ul>\r\n	<li>Kandungan dari HORMONIK Hormon Organik :N 0.06%, P2O5 0.01%, K2O 0.18 ppm, Cu 3.58 ppm, Zn1.56 ppm, B 433.51%, Co 0.28 ppm, Fe 5.28 ppm,Mo &lt; 0.20, pH 6.20, Protein 0.04%, Kandungan air 94,31%,C organik 4,68%, Karbohidrat 5,34%, Asam Humat 0.95% Hormonik memacu pertumbuhan, pengumbian, pembungaan dan pembuahan tanaman untuk mendapatkan hasil panen optimal.</li>\r\n	<li>&nbsp;</li>\r\n	<li>Hormonik mengandung zat pengatur tumbuh (ZPT) Organik terutama Auksin, Giberelin, dan Sitokinin, di formulasikan dari bahan alami yang di butuhkan oleh semua jenis tanaman .</li>\r\n	<li>&nbsp;</li>\r\n	<li>Hormonik tidak membahayakan (aman) bagi kesehatan mausia maupun hewan peliharaan. Manfaat dan kegunaan HORMONIK Hormon Organik Mempercepat proses pertumbuhan tanaman</li>\r\n	<li>Memacu dan meningkatkan pertumbuhan dan pembuahan</li>\r\n	<li>Mengurangi kerontokan bunga dan buah</li>\r\n	<li>Membantu pertumbuhan tunas</li>\r\n	<li>Membantu pertumbuhan akar</li>\r\n	<li>Memacu pembesaran umbi</li>\r\n</ul>\r\n', 'produk1657539239.jpg', 1, '2022-07-11 11:33:59'),
(69, 42, 'Obat Tanaman - 100ml Rizotin Anti Hama Pembasmi Hama Pada Tanaman', 30000, '<p>Insektisida Rizotin 100EC untuk mengendalikan hama Perusak daun, Ulat grayak, Wereng, Walang, Gasir, Orong-orong dan hama jenis lainnya yang menggangu tanaman.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fitur Produk :</p>\r\n\r\n<p>- Memiliki kadar rendah</p>\r\n\r\n<p>- Dikemas dalam botol 100 ml</p>\r\n\r\n<p>- Mudah digunakan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Manfaat :</p>\r\n\r\n<p>- Insektisida Rizotin untuk membasmi berbagai jenis hama pada tanaman.</p>\r\n\r\n<p>- Meningkatkan hasil panen.</p>\r\n\r\n<p>- Menjaga kualitas buah</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dosis dan cara pemakaian :</p>\r\n\r\n<p>- Larutkan 3 4 Rizotin 100 EC kedalam 14 liter air, selanjutnya masukan tabung sprayer. Lalu semprotkan pada tanaman dan sekeliling tanaman.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Spesifikasi :</p>\r\n\r\n<p>- Isi: 100ml</p>\r\n', 'produk1657539350.jpg', 1, '2022-07-11 11:35:50'),
(70, 43, '[ PAKET ] Alat Hidroponik Lengkap', 270000, '<p>Paket Alat Hidroponik Lengkap&quot;<br />\r\n<br />\r\nSpesifikasi :<br />\r\n1. 1 Ember Penampung<br />\r\n2. 1 Alas / Tray Semai<br />\r\n3. 1 Gelas Ukur 100 mL<br />\r\n4. 1 Set pH Meter<br />\r\n5. 1 Set TDS - EC<br />\r\n6. 1 Set pH Up &amp; Down 250 mL<br />\r\n<br />\r\nJangan Lupa Follow IG @3mhidroponik agar dapat informasi mengenai hidroponik<br />\r\n<br />\r\nPeraturan Toko :<br />\r\n~ Mohon buat video unboxing Saat paket dibuka karena kami tidak menerima komplain jika ada barang yang kurang atau salah kirim tanpa video unboxing.<br />\r\n~ Jika ada kekurangan barang, harap melampirkan video unboxing, foto produk dan label pengiriman.<br />\r\n~Mohon mengisi data nama, alamat, no telp yang lengkap (untuk memudahkan kurir menemukan alamat).</p>\r\n', 'produk1657539978.jpg', 1, '2022-07-11 11:46:18'),
(71, 0, 'Grab Oke Peralatan Hidroponik Starter Kit Hidroponik Lengkap 2 Baki Biru', 382000, '<p>PERHATIAN : MOHON MAAF SEMENTARA TIDAK BISA PILIH DAN TUTUP BAKI KAMI KIRIM<br />\r\nSESUAI KETERSEDIAAN STOK KAMI.( TIDAK SESUAI WARNA)<br />\r\nDENGAN MEMBELI BERARTI SETUJU.<br />\r\nTERIMAKASIH<br />\r\n<br />\r\nStarter Kit Hoponik Sistem Wick / Sumbu ,yaitu Paket praktis bagi pemula<br />\r\nuntuk memulai belajar hoponik dengan sangat mudah.<br />\r\nIsi Paket terdiri dari :<br />\r\n# 2 pcs Baki hoponik ( ukuran 37,5cm x 30cm x 12cm )<br />\r\n# 2 pcs Tutup baki 9 lubang<br />\r\n# 18 pcs Net pot (warna bergantung ketersediaan)<br />\r\n# 18 pcs Sumbu kain flanel<br />\r\n# 1 pcs Rockwool Cultilene import ukuran 15 x 10 x 7,5cm / Lokal ukuran 20 x 15<br />\r\nx 5cm ,tergantung ketersediaan stok kami ( bisa jd 100 potong lebih ukuran dadu<br />\r\n2cm )<br />\r\n# 5 macam benih (repacking Caisim, Pak Coi, Bayam, Kangkung, Selada / sesuai<br />\r\nstok yg ada)<br />\r\n# 1 bks Nutrisi AB Mix untuk 100ltr larutan siap pakai<br />\r\n# 1 set aerator ( lengkap aerator 3 watt merk menurut ketersediaan, selang<br />\r\naerator 2meter,air stone 2pcs , T penyambung<br />\r\n# 1 pcs Nampan semai ( warna sesuai ketersediaan )<br />\r\n# 1 pcs alat suntik 20ml utk takaran nutrisi<br />\r\n# 1 Lembar panduan praktis dari cara semai hingga dah tanam.<br />\r\n<br />\r\n# BONUS KHUSUS PENGGUNA KURIR JNE DAN JNT # :<br />\r\n1 NUTRISI SAYURAN BUAH<br />\r\n1 BENIH CABAI REPACKING<br />\r\n1 BENIH TOMAT REPACKING .<br />\r\n.<br />\r\nSELAMA IKLAN INI MASIH ADA BERARTI PRODUK INI MASIH TERSEDIA.<br />\r\nSILAHKAN LANGSUNG DIORDER.<br />\r\nSELAMAT BELANJA...!!<br />\r\nNO KEEP. MEMBELI = SETUJU<br />\r\nNO RETUR KECUALI KESALAHAN KAMI DALAM WARNA DAN SIZE<br />\r\n- UNTUK KENYAMANAN BERSAMA, SEBELUM PROSES PEMBELIAN PASTIKAN KALIAN JUGA<br />\r\nMEMBACA TENTANG KEBIJAKAN PENGEMBALIAN PRODUK, KARENA SETELAH PEMBELIAN KAMI<br />\r\nMENGANGGAP BAHWA KALIAN TELAH MEMAHAMI DAN MENYETUJUI SEGALA ATURAN YANG ADA<br />\r\nDIDALAMNYA.<br />\r\n- TANGGUNG JAWAB PENJUAL ADALAH MENYEDIAKAN BARANG SESUAI DENGAN PESANAN LALU<br />\r\nMENGANTARNYA KE JASA PENGIRIMAN YANG TELAH DITENTUKAN PEMBELI. JIKA DITANYA<br />\r\nKAPAN BARANG SAMPAI? SEBAGAI PENJUAL KAMI HANYA BISA MENGESTIMASIKAN.<br />\r\n<br />\r\n{STOK SELALU READY LANGSUNG ATC AJA | SILAHKAN DIORDER STOK READY | CEK DISKRIPSI SEBELUM MEMBELI | READY STOK SESUAI VARIAN 95%...}</p>\r\n\"', 'produk1657540084.jpg', 1, '2022-07-11 11:48:04'),
(72, 0, 'Modul Kit Hidroponik NFT Hydroponic Lengkap siap pakai', 5500000, '<p>Kit Hidroponik / Modul Hidroponik Sistem NFT<br />\r\nPaket lengkap, tinggal semai. Ga perlu repot-repot bikin, tinggal pakai<br />\r\n<br />\r\nKelengkapan:<br />\r\n1 unit kit Hidropinik sistem NFT (bahan pipa PVC ukuran 2&quot;<br />\r\n1 unit waterpump merk RESIN<br />\r\n1 paket Nutrisi Hidroponik untuk 100liter air<br />\r\n2 unit tray semai 12lubang<br />\r\n3 macam benih sayur<br />\r\n24 buah netpot hitam<br />\r\n48 buah Rockwool ukuran 2,5x 2,5x 2,5<br />\r\n<br />\r\nBelum termasuk Bak/ Ember penampung Air, untuk memudahkan packing<br />\r\n<br />\r\nMau ongkos kirim lebih murah?<br />\r\nHubungi Kami lwat pesan</p>\r\n\r\n<p>&quot;</p>\r\n', 'produk1657540362.jpg', 1, '2022-07-11 11:52:42'),
(74, 43, 'Ph Meter Tanah Air Hidroponik Kit Alat Ukur Ph Tanah Air Pengukur Ph Tanah Ph Tester Digital A997', 42000, '<p>GARANSI TOKO 1 BULAN *Ketentuan Berlaku Alat Ukur (3 in 1) untuk = 1.PH tanah 2.Tingkat kelembaban 3. Intensitas cahaya Cocok untuk perkebunan, pertanian atau kebun pribadii Manfaat : - 3 fungsi dalam 1 alat : Mengukur kelembaban dan pH (keasaman) tanah dan intensitas cahaya - Membantu Anda mengendalikan tingkat PH di tanah - Tidak ada baterai yang diperlukan - Penggunaan di dalam ruangan atau di luar ruangan Spesifikasi : Panjang probe : 18 cm Panjang Keseluruhan = 26 Cm Berat produk sekitar 65 gram, namun dikenakan ongkos kirim berdasarkan volume. PH Meter merupakan alat untuk mengukur kadar pH (tingkat keasaman dan sifat basa) pada media tanam baik tanah maupun air. PH meter terdiri dari dua jenis yaitu pH meter tanah (soil ph meter) dan pH meter air. Khusus yang ini adalah pH meter tanah analog yang dapat membaca secara manual (bukan digital). Analog Soil Analyzer (3 in 1) tidak hanya dapat digunakan untuk mengukur pH tanah, namun juga dapat digunakan untuk mengukur intensitas cahaya dan kelembaban media tanam. Selain untuk tanah, alat ini juga dapat dimanfaatkan dalam kegiatan bercocok tanam secara hidroponik, seperti untuk mengukur media tanam sekam bakar dan cocopeat. Cocok untuk pertanian skala bisnis maupun home gardening (kebun rumahan). Kelebihan Analog Soil Analyzer (3 in 1): Desainnya elegan, ringan dan portabel. Sederhana, berkualitas, mudah digunakan dan dioperasikan. Dilengkapi display dan indikator yang mudah dibaca. Memiliki 3 fungsi sekaligus, yakni sebagai pH meter, pengukur kelembaban dan pengukur cahaya. Tidak perlu mengunakan baterai dan listrik, cukup ditancapkan ke tanah. Tersedia saklar untuk mengganti mode pengukuran yang diinginkan. Dapat membaca secara ilmiah dengan hasil yang akurat. Cocok digunakan di dalam ruangan ataupun di luar ruangan. Hemat biaya, waktu dan tenaga. Spesifikasi: Bahan: Plastik Warna: Hijau Model: Bulat dan Kotak Tipe: Analog pH: Skala 3.5 – 8.0 pH Kelembaban: Skala 0 – 10 Cahaya: Skala 0 – 2000 lumen Akurasi: ± 0,25 pH (20°C) Suhu kerja: ± 0 – 50 °C (32-122 °F) Pengukuran: 27cm (10.63?) x 5.5cm (2.17?) Panjang penyelidikan: 18cm (7.09?) Panjang probe: 201mm (8?) Ukuran produk: 26 x 6 x 3.5 cm Petunjuk Penggunaan: Bersihkan area yang akan kita ukur dari berbagai macam benda yang mungkin dapat menghambat keakuratan pengukuran. Jika media yang akan diukur dalam keadaan kering, sebaiknya siram media terlebih dahulu dengan air dan tunggu hingga air meresap. Tancapkan probe ke dalam tanah ataupun media tanam hidroponik yang ingin diukur hingga probe tenggelam secara keseluruhan atau kira-kira 5-10 cm hingga elektroda menyentuh daerah akar tanaman. Tunggu beberapa saat hingga jarum pada display dalam keadaan stabil.</p>\r\n\r\n<p>\"</p>\r\n\"\"', 'produk1657541875.jpg', 0, '2022-07-11 12:17:55'),
(75, 50, 'sayur KANGKUNG', 25000, '<p>SAYUR KANGKUN</p>\r\n\r\n<p>\"</p>\r\n\r\n<p>\"</p>\r\n\"\"\"', 'produk1657938835.jpg', 1, '2022-07-16 02:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `td_admin`
--

CREATE TABLE `td_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `td_admin`
--
ALTER TABLE `td_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `td_admin`
--
ALTER TABLE `td_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
