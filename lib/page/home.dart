import 'package:flutter/material.dart';
import '../component/list_category.dart'; //IMPORT FILE list_category.dart YANG BERFUNGSI SEBAGAI LAYOUT UNTUK TIAP ITEM CATEGORY YANG AKAN DITAMPILKAN
import '../dummy_data.dart'; //FILE INI BERISI DATA DUMMY CATEGORY

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DONATS"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ], //SET TEXT PADA APPBAR
      ),
      //KITA AKAN MENGGUNAKAN GRIDVIEW AGAR TAMPILANNYA SESUAI NAMANYA AKAN MEMBENTUK GRID SESUAI BESARAN ELEMEN YANG DITAMPILKAN
      body: GridView(
        padding: EdgeInsets.all(
            15), //SET PADDINGNYA AGAR TIDAK TERLALU KE TEPI SCREEN
        //ADAPUN CHILDRENNYA ADALAH HASIL LOOPING DARI DATA DUMMY CATEGORY
        //DIMANA SETIAP DATANYA AKAN ME-LOAD COMPONENT ListCategory SEKALIGUS MENGIRIMKAN DATA YANG AKAN DITAMPILKAN
        children: CATEGORIES_DUMMY_DATA
            .map((cat) =>
                ListCategory(cat.id, cat.title, cat.description, cat.image))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, //MENGATUR BESARNYA ELEMEN GRID PER ITEMNYA,
          childAspectRatio: 1.0, //MENGATUR ASPEK RASIO
          crossAxisSpacing: 10, //MENGATUR JARAK ELEMENT SECARA HORIZONTAL
          mainAxisSpacing: 10, //MENGATUR JARAK ELEMENT SECARA VERTICAL
        ),
      ),
    );
  }
}
