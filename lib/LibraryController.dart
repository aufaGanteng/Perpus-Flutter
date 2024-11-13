import 'package:perpus/BookModel.dart';


class LibraryController {
  List<BookModel> book = [
    BookModel(
      id: 1,
      judul: 'LITTLE SECRETS',
      deskripsi: 'cerita seru',
      penerbit: 'Gramedia Pustaka Utama',
      fotoBuku: 'assets/Little Secrets.jpg',
      pengarang: 'Anna Snoekstra',
      stok: 3,

    ),
    BookModel(
      id: 2,
      judul: 'Berdarah Diatas Kertas',
      deskripsi: 'Motivasi',
      penerbit: 'Sajak Monokrom (Kaesya)',
      fotoBuku: 'assets/berdarah diatas kertas.jpg',
      pengarang: 'Akad x Skuad',
      stok: 9,
    ),
  ];

}